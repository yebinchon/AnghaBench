
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adu_device {int buflock; int interrupt_out_urb; int out_urb_finished; int write_wait; int interrupt_in_urb; int read_urb_finished; scalar_t__ disconnected; } ;


 int COMMAND_TIMEOUT ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_kill_urb (int ) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static void adu_abort_transfers(struct adu_device *dev)
{
 unsigned long flags;

 if (dev->disconnected)
  return;




 spin_lock_irqsave(&dev->buflock, flags);
 if (!dev->read_urb_finished) {
  spin_unlock_irqrestore(&dev->buflock, flags);
  usb_kill_urb(dev->interrupt_in_urb);
 } else
  spin_unlock_irqrestore(&dev->buflock, flags);

 spin_lock_irqsave(&dev->buflock, flags);
 if (!dev->out_urb_finished) {
  spin_unlock_irqrestore(&dev->buflock, flags);
  wait_event_timeout(dev->write_wait, dev->out_urb_finished,
   COMMAND_TIMEOUT);
  usb_kill_urb(dev->interrupt_out_urb);
 } else
  spin_unlock_irqrestore(&dev->buflock, flags);
}
