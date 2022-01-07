
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
struct max3421_hcd {int lock; int spi_thread; int todo; } ;


 int CHECK_UNLINK ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int
max3421_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 unsigned long flags;
 int retval;

 spin_lock_irqsave(&max3421_hcd->lock, flags);





 retval = usb_hcd_check_unlink_urb(hcd, urb, status);
 if (retval == 0) {
  set_bit(CHECK_UNLINK, &max3421_hcd->todo);
  wake_up_process(max3421_hcd->spi_thread);
 }
 spin_unlock_irqrestore(&max3421_hcd->lock, flags);
 return retval;
}
