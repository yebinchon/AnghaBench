
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ci_hdrc {int lock; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 int ci_role_to_usb_role (struct ci_hdrc*) ;
 struct ci_hdrc* dev_get_drvdata (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static enum usb_role ci_usb_role_switch_get(struct device *dev)
{
 struct ci_hdrc *ci = dev_get_drvdata(dev);
 enum usb_role role;
 unsigned long flags;

 spin_lock_irqsave(&ci->lock, flags);
 role = ci_role_to_usb_role(ci);
 spin_unlock_irqrestore(&ci->lock, flags);

 return role;
}
