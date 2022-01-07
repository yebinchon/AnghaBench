
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int work; } ;
struct rockchip_usb2phy_port {TYPE_2__ otg_sm_work; int mutex; TYPE_1__* port_cfg; TYPE_4__* phy; } ;
struct rockchip_usb2phy {int grf; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {int parent; } ;
struct TYPE_8__ {TYPE_3__ dev; } ;
struct TYPE_5__ {int bvalid_det_clr; int bvalid_det_st; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct rockchip_usb2phy* dev_get_drvdata (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int property_enable (int ,int *,int) ;
 int property_enabled (int ,int *) ;
 int rockchip_usb2phy_otg_sm_work (int *) ;

__attribute__((used)) static irqreturn_t rockchip_usb2phy_bvalid_irq(int irq, void *data)
{
 struct rockchip_usb2phy_port *rport = data;
 struct rockchip_usb2phy *rphy = dev_get_drvdata(rport->phy->dev.parent);

 if (!property_enabled(rphy->grf, &rport->port_cfg->bvalid_det_st))
  return IRQ_NONE;

 mutex_lock(&rport->mutex);


 property_enable(rphy->grf, &rport->port_cfg->bvalid_det_clr, 1);

 mutex_unlock(&rport->mutex);

 rockchip_usb2phy_otg_sm_work(&rport->otg_sm_work.work);

 return IRQ_HANDLED;
}
