
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int head; } ;


 int list_del (int *) ;
 int phy_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void usb_remove_phy(struct usb_phy *x)
{
 unsigned long flags;

 spin_lock_irqsave(&phy_lock, flags);
 if (x)
  list_del(&x->head);
 spin_unlock_irqrestore(&phy_lock, flags);
}
