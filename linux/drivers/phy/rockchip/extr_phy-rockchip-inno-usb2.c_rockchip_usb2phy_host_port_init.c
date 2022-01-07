
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_usb2phy_port {size_t port_id; int suspended; scalar_t__ ls_irq; int sm_work; int mutex; int * port_cfg; } ;
struct rockchip_usb2phy {int dev; TYPE_1__* phy_cfg; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int * port_cfgs; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 size_t USB2PHY_PORT_HOST ;
 int dev_err (int ,char*) ;
 int devm_request_threaded_irq (int ,int,int *,int ,int ,char*,struct rockchip_usb2phy_port*) ;
 int mutex_init (int *) ;
 scalar_t__ of_irq_get_byname (struct device_node*,char*) ;
 int rockchip_usb2phy_linestate_irq ;
 int rockchip_usb2phy_sm_work ;

__attribute__((used)) static int rockchip_usb2phy_host_port_init(struct rockchip_usb2phy *rphy,
        struct rockchip_usb2phy_port *rport,
        struct device_node *child_np)
{
 int ret;

 rport->port_id = USB2PHY_PORT_HOST;
 rport->port_cfg = &rphy->phy_cfg->port_cfgs[USB2PHY_PORT_HOST];
 rport->suspended = 1;

 mutex_init(&rport->mutex);
 INIT_DELAYED_WORK(&rport->sm_work, rockchip_usb2phy_sm_work);

 rport->ls_irq = of_irq_get_byname(child_np, "linestate");
 if (rport->ls_irq < 0) {
  dev_err(rphy->dev, "no linestate irq provided\n");
  return rport->ls_irq;
 }

 ret = devm_request_threaded_irq(rphy->dev, rport->ls_irq, ((void*)0),
     rockchip_usb2phy_linestate_irq,
     IRQF_ONESHOT,
     "rockchip_usb2phy", rport);
 if (ret) {
  dev_err(rphy->dev, "failed to request linestate irq handle\n");
  return ret;
 }

 return 0;
}
