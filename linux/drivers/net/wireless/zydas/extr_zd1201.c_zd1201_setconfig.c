
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zd1201 {TYPE_1__* usb; int * rxdata; scalar_t__ rxlen; scalar_t__ rxdatas; int rxdataq; int endp_out2; } ;
struct urb {int dummy; } ;
typedef int gfp_t ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_NOIO ;
 int ZD1201_ACCESSBIT ;
 int ZD1201_CMDCODE_ACCESS ;
 int ZD1201_USB_CMDREQ ;
 unsigned char ZD1201_USB_RESREQ ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int dev_dbg (int *,char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (unsigned char*,void*,int) ;
 int memset (unsigned char*,int ,int) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,TYPE_1__*,int ,unsigned char*,int,int ,struct zd1201*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (TYPE_1__*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wait_event_interruptible (int ,scalar_t__) ;
 int zd1201_usbfree ;

__attribute__((used)) static int zd1201_setconfig(struct zd1201 *zd, int rid, void *buf, int len, int wait)
{
 int err;
 unsigned char *request;
 int reqlen;
 char seq=0;
 struct urb *urb;
 gfp_t gfp_mask = wait ? GFP_NOIO : GFP_ATOMIC;

 len += 4;

 zd->rxdatas = 0;
 zd->rxlen = 0;
 for (seq=0; len > 0; seq++) {
  request = kmalloc(16, gfp_mask);
  if (!request)
   return -ENOMEM;
  urb = usb_alloc_urb(0, gfp_mask);
  if (!urb) {
   kfree(request);
   return -ENOMEM;
  }
  memset(request, 0, 16);
  reqlen = len>12 ? 12 : len;
  request[0] = ZD1201_USB_RESREQ;
  request[1] = seq;
  request[2] = 0;
  request[3] = 0;
  if (request[1] == 0) {

   *(__le16*)&request[4] = cpu_to_le16((len-2+1)/2);
   *(__le16*)&request[6] = cpu_to_le16(rid);
   memcpy(request+8, buf, reqlen-4);
   buf += reqlen-4;
  } else {
   memcpy(request+4, buf, reqlen);
   buf += reqlen;
  }

  len -= reqlen;

  usb_fill_bulk_urb(urb, zd->usb, usb_sndbulkpipe(zd->usb,
      zd->endp_out2), request, 16, zd1201_usbfree, zd);
  err = usb_submit_urb(urb, gfp_mask);
  if (err)
   goto err;
 }

 request = kmalloc(16, gfp_mask);
 if (!request)
  return -ENOMEM;
 urb = usb_alloc_urb(0, gfp_mask);
 if (!urb) {
  kfree(request);
  return -ENOMEM;
 }
 *((__le32*)request) = cpu_to_le32(ZD1201_USB_CMDREQ);
 *((__le16*)&request[4]) =
     cpu_to_le16(ZD1201_CMDCODE_ACCESS|ZD1201_ACCESSBIT);
 *((__le16*)&request[6]) = cpu_to_le16(rid);
 *((__le16*)&request[8]) = cpu_to_le16(0);
 *((__le16*)&request[10]) = cpu_to_le16(0);
 usb_fill_bulk_urb(urb, zd->usb, usb_sndbulkpipe(zd->usb, zd->endp_out2),
      request, 16, zd1201_usbfree, zd);
 err = usb_submit_urb(urb, gfp_mask);
 if (err)
  goto err;

 if (wait) {
  wait_event_interruptible(zd->rxdataq, zd->rxdatas);
  if (!zd->rxlen || le16_to_cpu(*(__le16*)&zd->rxdata[6]) != rid) {
   dev_dbg(&zd->usb->dev, "wrong or no RID received\n");
  }
 }

 return 0;
err:
 kfree(request);
 usb_free_urb(urb);
 return err;
}
