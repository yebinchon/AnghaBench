
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dwc3_omap {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;




 int USBOTGSS_UTMI_OTG_CTRL_SW_MODE ;
 int dev_WARN (TYPE_1__*,char*,int) ;
 int dwc3_omap_read_utmi_ctrl (struct dwc3_omap*) ;
 int dwc3_omap_write_utmi_ctrl (struct dwc3_omap*,int) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static void dwc3_omap_set_utmi_mode(struct dwc3_omap *omap)
{
 u32 reg;
 struct device_node *node = omap->dev->of_node;
 u32 utmi_mode = 0;

 reg = dwc3_omap_read_utmi_ctrl(omap);

 of_property_read_u32(node, "utmi-mode", &utmi_mode);

 switch (utmi_mode) {
 case 128:
  reg |= USBOTGSS_UTMI_OTG_CTRL_SW_MODE;
  break;
 case 129:
  reg &= ~USBOTGSS_UTMI_OTG_CTRL_SW_MODE;
  break;
 default:
  dev_WARN(omap->dev, "UNKNOWN utmi mode %d\n", utmi_mode);
 }

 dwc3_omap_write_utmi_ctrl(omap, reg);
}
