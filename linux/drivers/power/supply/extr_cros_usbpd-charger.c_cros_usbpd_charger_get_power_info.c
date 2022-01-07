
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct port_data {int port_number; int psy_status; int psy_usb_type; int psy_online; int psy; TYPE_1__ psy_desc; int psy_current_max; int psy_voltage_max_design; int psy_power_max; int psy_voltage_now; struct charger_data* charger; } ;
struct TYPE_4__ {int current_lim; int current_max; int voltage_now; int voltage_max; } ;
struct ec_response_usb_pd_power_info {int role; int type; int max_power; TYPE_2__ meas; int dualrole; } ;
struct ec_params_usb_pd_power_info {int port; } ;
struct device {int dummy; } ;
struct charger_data {struct device* dev; } ;
typedef int resp ;
typedef int req ;


 int EC_CMD_USB_PD_POWER_INFO ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 void* POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_TYPE_MAINS ;
 int POWER_SUPPLY_TYPE_USB ;
 int POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID ;
 int POWER_SUPPLY_USB_TYPE_C ;
 int POWER_SUPPLY_USB_TYPE_CDP ;
 int POWER_SUPPLY_USB_TYPE_DCP ;
 int POWER_SUPPLY_USB_TYPE_PD ;
 void* POWER_SUPPLY_USB_TYPE_PD_DRP ;
 void* POWER_SUPPLY_USB_TYPE_SDP ;
 int POWER_SUPPLY_USB_TYPE_UNKNOWN ;
 int cros_usbpd_charger_ec_command (struct charger_data*,int ,int ,struct ec_params_usb_pd_power_info*,int,struct ec_response_usb_pd_power_info*,int) ;
 scalar_t__ cros_usbpd_charger_port_is_dedicated (struct port_data*) ;
 int dev_dbg (struct device*,char*,int,int,int ,int ,int ,int ,int ) ;
 int dev_err (struct device*,char*,int) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static int cros_usbpd_charger_get_power_info(struct port_data *port)
{
 struct charger_data *charger = port->charger;
 struct ec_response_usb_pd_power_info resp;
 struct ec_params_usb_pd_power_info req;
 int last_psy_status, last_psy_usb_type;
 struct device *dev = charger->dev;
 int ret;

 req.port = port->port_number;
 ret = cros_usbpd_charger_ec_command(charger, 0,
         EC_CMD_USB_PD_POWER_INFO,
         &req, sizeof(req),
         &resp, sizeof(resp));
 if (ret < 0) {
  dev_err(dev, "Unable to query PD power info (err:0x%x)\n", ret);
  return ret;
 }

 last_psy_status = port->psy_status;
 last_psy_usb_type = port->psy_usb_type;

 switch (resp.role) {
 case 131:
  port->psy_status = POWER_SUPPLY_STATUS_NOT_CHARGING;
  port->psy_online = 0;
  break;
 case 128:
  port->psy_status = POWER_SUPPLY_STATUS_NOT_CHARGING;
  port->psy_online = 0;
  break;
 case 130:
  port->psy_status = POWER_SUPPLY_STATUS_CHARGING;
  port->psy_online = 1;
  break;
 case 129:
  port->psy_status = POWER_SUPPLY_STATUS_NOT_CHARGING;
  port->psy_online = 1;
  break;
 default:
  dev_err(dev, "Unknown role %d\n", resp.role);
  break;
 }

 port->psy_voltage_max_design = resp.meas.voltage_max;
 port->psy_voltage_now = resp.meas.voltage_now;
 port->psy_current_max = resp.meas.current_max;
 port->psy_power_max = resp.max_power;

 switch (resp.type) {
 case 139:
 case 132:
  port->psy_usb_type = POWER_SUPPLY_USB_TYPE_SDP;
  break;
 case 137:





  if (resp.role == 128 && resp.dualrole)
   port->psy_usb_type = POWER_SUPPLY_USB_TYPE_PD_DRP;
  else
   port->psy_usb_type = POWER_SUPPLY_USB_TYPE_SDP;
  break;
 case 136:
 case 134:
  port->psy_usb_type = POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID;
  break;
 case 138:
  port->psy_usb_type = POWER_SUPPLY_USB_TYPE_C;
  break;
 case 140:
  port->psy_usb_type = POWER_SUPPLY_USB_TYPE_DCP;
  break;
 case 141:
  port->psy_usb_type = POWER_SUPPLY_USB_TYPE_CDP;
  break;
 case 135:
  if (resp.dualrole)
   port->psy_usb_type = POWER_SUPPLY_USB_TYPE_PD_DRP;
  else
   port->psy_usb_type = POWER_SUPPLY_USB_TYPE_PD;
  break;
 case 133:






  port->psy_usb_type = POWER_SUPPLY_USB_TYPE_UNKNOWN;
  port->psy_voltage_max_design = 0;
  port->psy_current_max = 0;
  break;
 default:
  dev_err(dev, "Port %d: default case!\n", port->port_number);
  port->psy_usb_type = POWER_SUPPLY_USB_TYPE_SDP;
 }

 if (cros_usbpd_charger_port_is_dedicated(port))
  port->psy_desc.type = POWER_SUPPLY_TYPE_MAINS;
 else
  port->psy_desc.type = POWER_SUPPLY_TYPE_USB;

 dev_dbg(dev,
  "Port %d: type=%d vmax=%d vnow=%d cmax=%d clim=%d pmax=%d\n",
  port->port_number, resp.type, resp.meas.voltage_max,
  resp.meas.voltage_now, resp.meas.current_max,
  resp.meas.current_lim, resp.max_power);







 if (last_psy_usb_type != port->psy_usb_type ||
     last_psy_status != port->psy_status)
  power_supply_changed(port->psy);

 return 0;
}
