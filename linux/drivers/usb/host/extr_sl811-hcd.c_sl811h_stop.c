
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int rh_timer; } ;
struct sl811 {int lock; } ;


 int del_timer_sync (int *) ;
 struct sl811* hcd_to_sl811 (struct usb_hcd*) ;
 int port_power (struct sl811*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
sl811h_stop(struct usb_hcd *hcd)
{
 struct sl811 *sl811 = hcd_to_sl811(hcd);
 unsigned long flags;

 del_timer_sync(&hcd->rh_timer);

 spin_lock_irqsave(&sl811->lock, flags);
 port_power(sl811, 0);
 spin_unlock_irqrestore(&sl811->lock, flags);
}
