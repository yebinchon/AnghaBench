
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* set_max; void* usb_type_max; } ;
struct TYPE_3__ {int vbus_collapse; } ;
struct ab8500_charger {int usb_device_is_unrecognised; int is_aca_rid; TYPE_2__ max_usb_in_curr; int dev; TYPE_1__ flags; int parent; int vbus_detected; } ;
typedef enum ab8500_charger_link_status { ____Placeholder_ab8500_charger_link_status } ab8500_charger_link_status ;


 int ENXIO ;
 void* USB_CH_IP_CUR_LVL_0P05 ;
 void* USB_CH_IP_CUR_LVL_0P5 ;
 void* USB_CH_IP_CUR_LVL_0P9 ;
 void* USB_CH_IP_CUR_LVL_1P3 ;
 void* USB_CH_IP_CUR_LVL_1P5 ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int is_ab8500 (int ) ;

__attribute__((used)) static int ab8500_charger_max_usb_curr(struct ab8500_charger *di,
  enum ab8500_charger_link_status link_status)
{
 int ret = 0;

 di->usb_device_is_unrecognised = 0;
 switch (link_status) {
 case 128:
 case 130:
 case 129:
  dev_dbg(di->dev, "USB Type - Standard host is "
   "detected through USB driver\n");
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P5;
  di->is_aca_rid = 0;
  break;
 case 135:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P5;
  di->is_aca_rid = 0;
  break;
 case 136:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P5;
  di->is_aca_rid = 0;
  break;
 case 144:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P9;
  di->is_aca_rid = 0;
  break;
 case 146:




  dev_dbg(di->dev, "USB_STAT_ACA_RID_A detected\n");
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P5;
  di->is_aca_rid = 1;
  break;
 case 145:




  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_1P3;
  dev_dbg(di->dev, "USB Type - 0x%02x MaxCurr: %d", link_status,
    di->max_usb_in_curr.usb_type_max);
  di->is_aca_rid = 1;
  break;
 case 134:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P5;
  di->is_aca_rid = 0;
  break;
 case 138:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_1P5;
  di->is_aca_rid = 0;
  break;
 case 143:
 case 142:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_1P5;
  di->is_aca_rid = 1;
  break;
 case 133:
  if (di->vbus_detected) {
   di->usb_device_is_unrecognised = 1;
   dev_dbg(di->dev, "USB Type - Legacy charger.\n");
   di->max_usb_in_curr.usb_type_max =
      USB_CH_IP_CUR_LVL_1P5;
   break;
  }

 case 137:
  dev_err(di->dev, "USB Type - Charging not allowed\n");
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P05;
  ret = -ENXIO;
  break;
 case 131:
  if (is_ab8500(di->parent)) {
   di->flags.vbus_collapse = 1;
   dev_err(di->dev, "USB Type - USB_STAT_RESERVED "
      "VBUS has collapsed\n");
   ret = -ENXIO;
   break;
  } else {
   dev_dbg(di->dev, "USB Type - Charging not allowed\n");
   di->max_usb_in_curr.usb_type_max =
      USB_CH_IP_CUR_LVL_0P05;
   dev_dbg(di->dev, "USB Type - 0x%02x MaxCurr: %d",
    link_status,
    di->max_usb_in_curr.usb_type_max);
   ret = -ENXIO;
   break;
  }
 case 141:
 case 140:
 case 147:
 case 139:
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P5;
  dev_dbg(di->dev, "USB Type - 0x%02x MaxCurr: %d", link_status,
    di->max_usb_in_curr.usb_type_max);
  break;
 case 132:
  dev_err(di->dev, "USB Type invalid - try charging anyway\n");
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P5;
  break;

 default:
  dev_err(di->dev, "USB Type - Unknown\n");
  di->max_usb_in_curr.usb_type_max = USB_CH_IP_CUR_LVL_0P05;
  ret = -ENXIO;
  break;
 };

 di->max_usb_in_curr.set_max = di->max_usb_in_curr.usb_type_max;
 dev_dbg(di->dev, "USB Type - 0x%02x MaxCurr: %d",
  link_status, di->max_usb_in_curr.set_max);

 return ret;
}
