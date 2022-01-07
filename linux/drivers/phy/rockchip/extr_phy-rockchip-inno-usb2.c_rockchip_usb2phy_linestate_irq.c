
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int work; } ;
struct rockchip_usb2phy_port {scalar_t__ port_id; TYPE_4__ sm_work; scalar_t__ suspended; int mutex; TYPE_3__* port_cfg; TYPE_2__* phy; } ;
struct rockchip_usb2phy {int grf; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {int ls_det_clr; int ls_det_en; int ls_det_st; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ USB2PHY_PORT_HOST ;
 struct rockchip_usb2phy* dev_get_drvdata (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int property_enable (int ,int *,int) ;
 int property_enabled (int ,int *) ;
 int rockchip_usb2phy_sm_work (int *) ;

__attribute__((used)) static irqreturn_t rockchip_usb2phy_linestate_irq(int irq, void *data)
{
 struct rockchip_usb2phy_port *rport = data;
 struct rockchip_usb2phy *rphy = dev_get_drvdata(rport->phy->dev.parent);

 if (!property_enabled(rphy->grf, &rport->port_cfg->ls_det_st))
  return IRQ_NONE;

 mutex_lock(&rport->mutex);


 property_enable(rphy->grf, &rport->port_cfg->ls_det_en, 0);
 property_enable(rphy->grf, &rport->port_cfg->ls_det_clr, 1);

 mutex_unlock(&rport->mutex);






 if (rport->suspended && rport->port_id == USB2PHY_PORT_HOST)
  rockchip_usb2phy_sm_work(&rport->sm_work.work);

 return IRQ_HANDLED;
}
