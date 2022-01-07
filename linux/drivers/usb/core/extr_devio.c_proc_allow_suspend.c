
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_dev_state {int suspend_allowed; int dev; int not_yet_resumed; } ;


 int ENODEV ;
 int WRITE_ONCE (int ,int) ;
 int connected (struct usb_dev_state*) ;
 int usb_autosuspend_device (int ) ;

__attribute__((used)) static int proc_allow_suspend(struct usb_dev_state *ps)
{
 if (!connected(ps))
  return -ENODEV;

 WRITE_ONCE(ps->not_yet_resumed, 1);
 if (!ps->suspend_allowed) {
  usb_autosuspend_device(ps->dev);
  ps->suspend_allowed = 1;
 }
 return 0;
}
