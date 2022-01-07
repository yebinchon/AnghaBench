
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_dev_state {int suspend_allowed; int dev; } ;


 int EIO ;
 int ENODEV ;
 int usb_autoresume_device (int ) ;

__attribute__((used)) static int proc_forbid_suspend(struct usb_dev_state *ps)
{
 int ret = 0;

 if (ps->suspend_allowed) {
  ret = usb_autoresume_device(ps->dev);
  if (ret == 0)
   ps->suspend_allowed = 0;
  else if (ret != -ENODEV)
   ret = -EIO;
 }
 return ret;
}
