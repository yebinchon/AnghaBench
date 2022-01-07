
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int rx_urb; int endp_in; int usb; } ;
typedef int __le16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ZD1201_CMDCODE_ALLOC ;
 int ZD1201_CMDCODE_INIT ;
 int ZD1201_RID_CNFMAXTXBUFFERNUMBER ;
 int ZD1201_RXSIZE ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int ,int ) ;
 short le16_to_cpu (int ) ;
 int usb_fill_bulk_urb (int ,int ,int ,unsigned char*,int ,int ,struct zd1201*) ;
 int usb_kill_urb (int ) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (int ,int ) ;
 int zd1201_docmd (struct zd1201*,int ,int,int ,int ) ;
 int zd1201_getconfig (struct zd1201*,int ,int *,int) ;
 int zd1201_usbrx ;

__attribute__((used)) static int zd1201_drvr_start(struct zd1201 *zd)
{
 int err, i;
 short max;
 __le16 zdmax;
 unsigned char *buffer;

 buffer = kzalloc(ZD1201_RXSIZE, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 usb_fill_bulk_urb(zd->rx_urb, zd->usb,
     usb_rcvbulkpipe(zd->usb, zd->endp_in), buffer, ZD1201_RXSIZE,
     zd1201_usbrx, zd);

 err = usb_submit_urb(zd->rx_urb, GFP_KERNEL);
 if (err)
  goto err_buffer;

 err = zd1201_docmd(zd, ZD1201_CMDCODE_INIT, 0, 0, 0);
 if (err)
  goto err_urb;

 err = zd1201_getconfig(zd, ZD1201_RID_CNFMAXTXBUFFERNUMBER, &zdmax,
     sizeof(__le16));
 if (err)
  goto err_urb;

 max = le16_to_cpu(zdmax);
 for (i=0; i<max; i++) {
  err = zd1201_docmd(zd, ZD1201_CMDCODE_ALLOC, 1514, 0, 0);
  if (err)
   goto err_urb;
 }

 return 0;

err_urb:
 usb_kill_urb(zd->rx_urb);
 return err;
err_buffer:
 kfree(buffer);
 return err;
}
