
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int head; int notifier; int dev; } ;


 int ATOMIC_INIT_NOTIFIER_HEAD (int *) ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int list_add_tail (int *,int *) ;
 int phy_list ;
 int phy_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_add_extcon (struct usb_phy*) ;
 int usb_charger_init (struct usb_phy*) ;

int usb_add_phy_dev(struct usb_phy *x)
{
 unsigned long flags;
 int ret;

 if (!x->dev) {
  dev_err(x->dev, "no device provided for PHY\n");
  return -EINVAL;
 }

 usb_charger_init(x);
 ret = usb_add_extcon(x);
 if (ret)
  return ret;

 ATOMIC_INIT_NOTIFIER_HEAD(&x->notifier);

 spin_lock_irqsave(&phy_lock, flags);
 list_add_tail(&x->head, &phy_list);
 spin_unlock_irqrestore(&phy_lock, flags);

 return 0;
}
