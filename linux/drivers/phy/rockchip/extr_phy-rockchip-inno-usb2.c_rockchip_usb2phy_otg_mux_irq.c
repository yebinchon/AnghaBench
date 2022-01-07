
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rockchip_usb2phy_port {TYPE_3__* port_cfg; TYPE_2__* phy; } ;
struct rockchip_usb2phy {int grf; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int bvalid_det_st; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int IRQ_NONE ;
 struct rockchip_usb2phy* dev_get_drvdata (int ) ;
 scalar_t__ property_enabled (int ,int *) ;
 int rockchip_usb2phy_bvalid_irq (int,void*) ;

__attribute__((used)) static irqreturn_t rockchip_usb2phy_otg_mux_irq(int irq, void *data)
{
 struct rockchip_usb2phy_port *rport = data;
 struct rockchip_usb2phy *rphy = dev_get_drvdata(rport->phy->dev.parent);

 if (property_enabled(rphy->grf, &rport->port_cfg->bvalid_det_st))
  return rockchip_usb2phy_bvalid_irq(irq, data);
 else
  return IRQ_NONE;
}
