
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rockchip_usb2phy_port {scalar_t__ port_id; scalar_t__ mode; int mutex; int sm_work; TYPE_3__* port_cfg; TYPE_2__* phy; int otg_sm_work; } ;
struct rockchip_usb2phy {int grf; } ;
struct TYPE_4__ {int parent; } ;
struct phy {TYPE_1__ dev; } ;
struct TYPE_6__ {int ls_det_en; int ls_det_clr; int bvalid_det_en; int bvalid_det_clr; } ;
struct TYPE_5__ {int dev; } ;


 int OTG_SCHEDULE_DELAY ;
 int SCHEDULE_DELAY ;
 scalar_t__ USB2PHY_PORT_HOST ;
 scalar_t__ USB2PHY_PORT_OTG ;
 scalar_t__ USB_DR_MODE_HOST ;
 scalar_t__ USB_DR_MODE_UNKNOWN ;
 int dev_dbg (int *,char*,scalar_t__) ;
 struct rockchip_usb2phy* dev_get_drvdata (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rockchip_usb2phy_port* phy_get_drvdata (struct phy*) ;
 int property_enable (int ,int *,int) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static int rockchip_usb2phy_init(struct phy *phy)
{
 struct rockchip_usb2phy_port *rport = phy_get_drvdata(phy);
 struct rockchip_usb2phy *rphy = dev_get_drvdata(phy->dev.parent);
 int ret = 0;

 mutex_lock(&rport->mutex);

 if (rport->port_id == USB2PHY_PORT_OTG) {
  if (rport->mode != USB_DR_MODE_HOST &&
      rport->mode != USB_DR_MODE_UNKNOWN) {

   ret = property_enable(rphy->grf,
           &rport->port_cfg->bvalid_det_clr,
           1);
   if (ret)
    goto out;

   ret = property_enable(rphy->grf,
           &rport->port_cfg->bvalid_det_en,
           1);
   if (ret)
    goto out;

   schedule_delayed_work(&rport->otg_sm_work,
           OTG_SCHEDULE_DELAY * 3);
  } else {

   dev_dbg(&rport->phy->dev, "mode %d\n", rport->mode);
  }
 } else if (rport->port_id == USB2PHY_PORT_HOST) {

  ret = property_enable(rphy->grf,
          &rport->port_cfg->ls_det_clr, 1);
  if (ret)
   goto out;

  ret = property_enable(rphy->grf,
          &rport->port_cfg->ls_det_en, 1);
  if (ret)
   goto out;

  schedule_delayed_work(&rport->sm_work, SCHEDULE_DELAY);
 }

out:
 mutex_unlock(&rport->mutex);
 return ret;
}
