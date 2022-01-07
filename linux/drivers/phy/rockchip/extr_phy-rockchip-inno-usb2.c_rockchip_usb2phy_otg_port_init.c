
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int notifier_call; } ;
struct rockchip_usb2phy_port {size_t port_id; int suspended; int vbus_attached; scalar_t__ mode; scalar_t__ otg_mux_irq; int bvalid_irq; TYPE_2__ event_nb; int otg_sm_work; int chg_work; int mutex; int state; int * port_cfg; } ;
struct rockchip_usb2phy {int dev; int edev; TYPE_1__* phy_cfg; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int * port_cfgs; } ;


 int EXTCON_USB_HOST ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IS_ERR (int ) ;
 int OTG_STATE_UNDEFINED ;
 size_t USB2PHY_PORT_OTG ;
 scalar_t__ USB_DR_MODE_HOST ;
 scalar_t__ USB_DR_MODE_UNKNOWN ;
 int dev_err (int ,char*) ;
 int devm_extcon_register_notifier (int ,int ,int ,TYPE_2__*) ;
 int devm_request_threaded_irq (int ,int,int *,int ,int ,char*,struct rockchip_usb2phy_port*) ;
 int mutex_init (int *) ;
 void* of_irq_get_byname (struct device_node*,char*) ;
 scalar_t__ of_usb_get_dr_mode_by_phy (struct device_node*,int) ;
 int rockchip_chg_detect_work ;
 int rockchip_otg_event ;
 int rockchip_usb2phy_bvalid_irq ;
 int rockchip_usb2phy_otg_mux_irq ;
 int rockchip_usb2phy_otg_sm_work ;

__attribute__((used)) static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
       struct rockchip_usb2phy_port *rport,
       struct device_node *child_np)
{
 int ret;

 rport->port_id = USB2PHY_PORT_OTG;
 rport->port_cfg = &rphy->phy_cfg->port_cfgs[USB2PHY_PORT_OTG];
 rport->state = OTG_STATE_UNDEFINED;







 rport->suspended = 1;
 rport->vbus_attached = 0;

 mutex_init(&rport->mutex);

 rport->mode = of_usb_get_dr_mode_by_phy(child_np, -1);
 if (rport->mode == USB_DR_MODE_HOST ||
     rport->mode == USB_DR_MODE_UNKNOWN) {
  ret = 0;
  goto out;
 }

 INIT_DELAYED_WORK(&rport->chg_work, rockchip_chg_detect_work);
 INIT_DELAYED_WORK(&rport->otg_sm_work, rockchip_usb2phy_otg_sm_work);






 rport->otg_mux_irq = of_irq_get_byname(child_np, "otg-mux");
 if (rport->otg_mux_irq > 0) {
  ret = devm_request_threaded_irq(rphy->dev, rport->otg_mux_irq,
      ((void*)0),
      rockchip_usb2phy_otg_mux_irq,
      IRQF_ONESHOT,
      "rockchip_usb2phy_otg",
      rport);
  if (ret) {
   dev_err(rphy->dev,
    "failed to request otg-mux irq handle\n");
   goto out;
  }
 } else {
  rport->bvalid_irq = of_irq_get_byname(child_np, "otg-bvalid");
  if (rport->bvalid_irq < 0) {
   dev_err(rphy->dev, "no vbus valid irq provided\n");
   ret = rport->bvalid_irq;
   goto out;
  }

  ret = devm_request_threaded_irq(rphy->dev, rport->bvalid_irq,
      ((void*)0),
      rockchip_usb2phy_bvalid_irq,
      IRQF_ONESHOT,
      "rockchip_usb2phy_bvalid",
      rport);
  if (ret) {
   dev_err(rphy->dev,
    "failed to request otg-bvalid irq handle\n");
   goto out;
  }
 }

 if (!IS_ERR(rphy->edev)) {
  rport->event_nb.notifier_call = rockchip_otg_event;

  ret = devm_extcon_register_notifier(rphy->dev, rphy->edev,
     EXTCON_USB_HOST, &rport->event_nb);
  if (ret)
   dev_err(rphy->dev, "register USB HOST notifier failed\n");
 }

out:
 return ret;
}
