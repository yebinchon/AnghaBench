
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_control_phy {scalar_t__ type; } ;
struct device {int dummy; } ;
typedef enum omap_control_usb_mode { ____Placeholder_omap_control_usb_mode } omap_control_usb_mode ;


 scalar_t__ IS_ERR (struct device*) ;
 scalar_t__ OMAP_CTRL_TYPE_OTGHS ;



 int dev_err (struct device*,char*) ;
 struct omap_control_phy* dev_get_drvdata (struct device*) ;
 int dev_vdbg (struct device*,char*) ;
 int omap_control_usb_device_mode (struct omap_control_phy*) ;
 int omap_control_usb_host_mode (struct omap_control_phy*) ;
 int omap_control_usb_set_sessionend (struct omap_control_phy*) ;

void omap_control_usb_set_mode(struct device *dev,
 enum omap_control_usb_mode mode)
{
 struct omap_control_phy *ctrl_phy;

 if (IS_ERR(dev) || !dev)
  return;

 ctrl_phy = dev_get_drvdata(dev);
 if (!ctrl_phy) {
  dev_err(dev, "Invalid control phy device\n");
  return;
 }

 if (ctrl_phy->type != OMAP_CTRL_TYPE_OTGHS)
  return;

 switch (mode) {
 case 128:
  omap_control_usb_host_mode(ctrl_phy);
  break;
 case 130:
  omap_control_usb_device_mode(ctrl_phy);
  break;
 case 129:
  omap_control_usb_set_sessionend(ctrl_phy);
  break;
 default:
  dev_vdbg(dev, "invalid omap control usb mode\n");
 }
}
