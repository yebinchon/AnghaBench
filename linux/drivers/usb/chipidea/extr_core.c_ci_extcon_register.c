
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ci_hdrc_cable {int nb; int edev; struct ci_hdrc* ci; } ;
struct ci_hdrc {int dev; TYPE_1__* platdata; } ;
struct TYPE_2__ {struct ci_hdrc_cable vbus_extcon; struct ci_hdrc_cable id_extcon; } ;


 int EXTCON_USB ;
 int EXTCON_USB_HOST ;
 int IS_ERR_OR_NULL (int ) ;
 int dev_err (int ,char*) ;
 int devm_extcon_register_notifier (int ,int ,int ,int *) ;

__attribute__((used)) static int ci_extcon_register(struct ci_hdrc *ci)
{
 struct ci_hdrc_cable *id, *vbus;
 int ret;

 id = &ci->platdata->id_extcon;
 id->ci = ci;
 if (!IS_ERR_OR_NULL(id->edev)) {
  ret = devm_extcon_register_notifier(ci->dev, id->edev,
      EXTCON_USB_HOST, &id->nb);
  if (ret < 0) {
   dev_err(ci->dev, "register ID failed\n");
   return ret;
  }
 }

 vbus = &ci->platdata->vbus_extcon;
 vbus->ci = ci;
 if (!IS_ERR_OR_NULL(vbus->edev)) {
  ret = devm_extcon_register_notifier(ci->dev, vbus->edev,
      EXTCON_USB, &vbus->nb);
  if (ret < 0) {
   dev_err(ci->dev, "register VBUS failed\n");
   return ret;
  }
 }

 return 0;
}
