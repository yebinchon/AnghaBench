
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct extcon_dev {int dummy; } ;
struct TYPE_6__ {int notifier_call; } ;
struct dwc3_omap {struct extcon_dev* edev; TYPE_1__* dev; TYPE_3__ id_nb; TYPE_3__ vbus_nb; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;


 int EPROBE_DEFER ;
 int EXTCON_USB ;
 int EXTCON_USB_HOST ;
 scalar_t__ IS_ERR (struct extcon_dev*) ;
 int OMAP_DWC3_ID_GROUND ;
 int OMAP_DWC3_VBUS_VALID ;
 int dev_vdbg (TYPE_1__*,char*) ;
 int devm_extcon_register_notifier (TYPE_1__*,struct extcon_dev*,int ,TYPE_3__*) ;
 int dwc3_omap_id_notifier ;
 int dwc3_omap_set_mailbox (struct dwc3_omap*,int ) ;
 int dwc3_omap_vbus_notifier ;
 struct extcon_dev* extcon_get_edev_by_phandle (TYPE_1__*,int ) ;
 int extcon_get_state (struct extcon_dev*,int ) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;

__attribute__((used)) static int dwc3_omap_extcon_register(struct dwc3_omap *omap)
{
 int ret;
 struct device_node *node = omap->dev->of_node;
 struct extcon_dev *edev;

 if (of_property_read_bool(node, "extcon")) {
  edev = extcon_get_edev_by_phandle(omap->dev, 0);
  if (IS_ERR(edev)) {
   dev_vdbg(omap->dev, "couldn't get extcon device\n");
   return -EPROBE_DEFER;
  }

  omap->vbus_nb.notifier_call = dwc3_omap_vbus_notifier;
  ret = devm_extcon_register_notifier(omap->dev, edev,
      EXTCON_USB, &omap->vbus_nb);
  if (ret < 0)
   dev_vdbg(omap->dev, "failed to register notifier for USB\n");

  omap->id_nb.notifier_call = dwc3_omap_id_notifier;
  ret = devm_extcon_register_notifier(omap->dev, edev,
      EXTCON_USB_HOST, &omap->id_nb);
  if (ret < 0)
   dev_vdbg(omap->dev, "failed to register notifier for USB-HOST\n");

  if (extcon_get_state(edev, EXTCON_USB) == 1)
   dwc3_omap_set_mailbox(omap, OMAP_DWC3_VBUS_VALID);
  if (extcon_get_state(edev, EXTCON_USB_HOST) == 1)
   dwc3_omap_set_mailbox(omap, OMAP_DWC3_ID_GROUND);

  omap->edev = edev;
 }

 return 0;
}
