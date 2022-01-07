
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_usb2phy_port {scalar_t__ port_id; scalar_t__ mode; int sm_work; int chg_work; int otg_sm_work; } ;
struct phy {int dummy; } ;


 scalar_t__ USB2PHY_PORT_HOST ;
 scalar_t__ USB2PHY_PORT_OTG ;
 scalar_t__ USB_DR_MODE_HOST ;
 scalar_t__ USB_DR_MODE_UNKNOWN ;
 int cancel_delayed_work_sync (int *) ;
 struct rockchip_usb2phy_port* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int rockchip_usb2phy_exit(struct phy *phy)
{
 struct rockchip_usb2phy_port *rport = phy_get_drvdata(phy);

 if (rport->port_id == USB2PHY_PORT_OTG &&
     rport->mode != USB_DR_MODE_HOST &&
     rport->mode != USB_DR_MODE_UNKNOWN) {
  cancel_delayed_work_sync(&rport->otg_sm_work);
  cancel_delayed_work_sync(&rport->chg_work);
 } else if (rport->port_id == USB2PHY_PORT_HOST)
  cancel_delayed_work_sync(&rport->sm_work);

 return 0;
}
