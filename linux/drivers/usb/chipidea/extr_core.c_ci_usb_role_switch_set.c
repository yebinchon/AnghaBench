
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ci_hdrc_cable {int changed; int connected; } ;
struct ci_hdrc {int dev; int lock; int irq; TYPE_1__* platdata; scalar_t__ wq; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;
struct TYPE_2__ {struct ci_hdrc_cable id_extcon; struct ci_hdrc_cable vbus_extcon; } ;


 int USB_ROLE_DEVICE ;
 int USB_ROLE_HOST ;
 int USB_ROLE_NONE ;
 int ci_irq (int ,struct ci_hdrc*) ;
 int ci_role_to_usb_role (struct ci_hdrc*) ;
 struct ci_hdrc* dev_get_drvdata (struct device*) ;
 int flush_workqueue (scalar_t__) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ci_usb_role_switch_set(struct device *dev, enum usb_role role)
{
 struct ci_hdrc *ci = dev_get_drvdata(dev);
 struct ci_hdrc_cable *cable = ((void*)0);
 enum usb_role current_role = ci_role_to_usb_role(ci);
 unsigned long flags;

 if (current_role == role)
  return 0;

 pm_runtime_get_sync(ci->dev);

 spin_lock_irqsave(&ci->lock, flags);
 if (current_role == USB_ROLE_DEVICE)
  cable = &ci->platdata->vbus_extcon;
 else if (current_role == USB_ROLE_HOST)
  cable = &ci->platdata->id_extcon;

 if (cable) {
  cable->changed = 1;
  cable->connected = 0;
  ci_irq(ci->irq, ci);
  spin_unlock_irqrestore(&ci->lock, flags);
  if (ci->wq && role != USB_ROLE_NONE)
   flush_workqueue(ci->wq);
  spin_lock_irqsave(&ci->lock, flags);
 }

 cable = ((void*)0);


 if (role == USB_ROLE_DEVICE)
  cable = &ci->platdata->vbus_extcon;
 else if (role == USB_ROLE_HOST)
  cable = &ci->platdata->id_extcon;

 if (cable) {
  cable->changed = 1;
  cable->connected = 1;
  ci_irq(ci->irq, ci);
 }
 spin_unlock_irqrestore(&ci->lock, flags);
 pm_runtime_put_sync(ci->dev);

 return 0;
}
