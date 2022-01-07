
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_omap {int dev; int vbus_reg; } ;
typedef enum omap_dwc3_vbus_id_status { ____Placeholder_omap_dwc3_vbus_id_status } omap_dwc3_vbus_id_status ;






 int USBOTGSS_UTMI_OTG_CTRL_IDDIG ;
 int USBOTGSS_UTMI_OTG_CTRL_SESSEND ;
 int USBOTGSS_UTMI_OTG_CTRL_SESSVALID ;
 int USBOTGSS_UTMI_OTG_CTRL_VBUSVALID ;
 int dev_WARN (int ,char*) ;
 int dev_err (int ,char*) ;
 int dwc3_omap_read_utmi_ctrl (struct dwc3_omap*) ;
 int dwc3_omap_write_utmi_ctrl (struct dwc3_omap*,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static void dwc3_omap_set_mailbox(struct dwc3_omap *omap,
 enum omap_dwc3_vbus_id_status status)
{
 int ret;
 u32 val;

 switch (status) {
 case 130:
  if (omap->vbus_reg) {
   ret = regulator_enable(omap->vbus_reg);
   if (ret) {
    dev_err(omap->dev, "regulator enable failed\n");
    return;
   }
  }

  val = dwc3_omap_read_utmi_ctrl(omap);
  val &= ~USBOTGSS_UTMI_OTG_CTRL_IDDIG;
  dwc3_omap_write_utmi_ctrl(omap, val);
  break;

 case 128:
  val = dwc3_omap_read_utmi_ctrl(omap);
  val &= ~USBOTGSS_UTMI_OTG_CTRL_SESSEND;
  val |= USBOTGSS_UTMI_OTG_CTRL_VBUSVALID
    | USBOTGSS_UTMI_OTG_CTRL_SESSVALID;
  dwc3_omap_write_utmi_ctrl(omap, val);
  break;

 case 131:
  if (omap->vbus_reg)
   regulator_disable(omap->vbus_reg);
  val = dwc3_omap_read_utmi_ctrl(omap);
  val |= USBOTGSS_UTMI_OTG_CTRL_IDDIG;
  dwc3_omap_write_utmi_ctrl(omap, val);
  break;

 case 129:
  val = dwc3_omap_read_utmi_ctrl(omap);
  val &= ~(USBOTGSS_UTMI_OTG_CTRL_SESSVALID
    | USBOTGSS_UTMI_OTG_CTRL_VBUSVALID);
  val |= USBOTGSS_UTMI_OTG_CTRL_SESSEND;
  dwc3_omap_write_utmi_ctrl(omap, val);
  break;

 default:
  dev_WARN(omap->dev, "invalid state\n");
 }
}
