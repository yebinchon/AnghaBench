
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_dev_state {int dev; int not_yet_resumed; int wait_for_resume; } ;


 int EINTR ;
 scalar_t__ READ_ONCE (int ) ;
 int proc_forbid_suspend (struct usb_dev_state*) ;
 int usb_lock_device (int ) ;
 int usb_unlock_device (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int proc_wait_for_resume(struct usb_dev_state *ps)
{
 int ret;

 usb_unlock_device(ps->dev);
 ret = wait_event_interruptible(ps->wait_for_resume,
   READ_ONCE(ps->not_yet_resumed) == 0);
 usb_lock_device(ps->dev);

 if (ret != 0)
  return -EINTR;
 return proc_forbid_suspend(ps);
}
