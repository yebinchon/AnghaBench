
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dlfb_data {TYPE_1__* udev; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int dev_err (int *,char*,int,int) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int usb_control_msg (TYPE_1__*,int ,int,int,int,int,char*,int,int ) ;
 int usb_rcvctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int dlfb_get_edid(struct dlfb_data *dlfb, char *edid, int len)
{
 int i, ret;
 char *rbuf;

 rbuf = kmalloc(2, GFP_KERNEL);
 if (!rbuf)
  return 0;

 for (i = 0; i < len; i++) {
  ret = usb_control_msg(dlfb->udev,
          usb_rcvctrlpipe(dlfb->udev, 0), 0x02,
          (0x80 | (0x02 << 5)), i << 8, 0xA1,
          rbuf, 2, USB_CTRL_GET_TIMEOUT);
  if (ret < 2) {
   dev_err(&dlfb->udev->dev,
    "Read EDID byte %d failed: %d\n", i, ret);
   i--;
   break;
  }
  edid[i] = rbuf[1];
 }

 kfree(rbuf);

 return i;
}
