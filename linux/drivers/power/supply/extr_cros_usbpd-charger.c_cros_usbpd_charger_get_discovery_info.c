
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_data {int model_name; int manufacturer; int port_number; struct charger_data* charger; } ;
struct ec_params_usb_pd_info_request {int port; } ;
struct ec_params_usb_pd_discovery_entry {int vid; int pid; int ptype; } ;
struct charger_data {int dev; } ;
typedef int resp ;
typedef int req ;


 int EC_CMD_USB_PD_DISCOVERY ;
 int cros_usbpd_charger_ec_command (struct charger_data*,int ,int ,struct ec_params_usb_pd_info_request*,int,struct ec_params_usb_pd_discovery_entry*,int) ;
 int dev_dbg (int ,char*,int ,int,int,int ) ;
 int dev_err (int ,char*,int) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int cros_usbpd_charger_get_discovery_info(struct port_data *port)
{
 struct charger_data *charger = port->charger;
 struct ec_params_usb_pd_discovery_entry resp;
 struct ec_params_usb_pd_info_request req;
 int ret;

 req.port = port->port_number;

 ret = cros_usbpd_charger_ec_command(charger, 0,
         EC_CMD_USB_PD_DISCOVERY,
         &req, sizeof(req),
         &resp, sizeof(resp));
 if (ret < 0) {
  dev_err(charger->dev,
   "Unable to query discovery info (err:0x%x)\n", ret);
  return ret;
 }

 dev_dbg(charger->dev, "Port %d: VID = 0x%x, PID=0x%x, PTYPE=0x%x\n",
  port->port_number, resp.vid, resp.pid, resp.ptype);

 snprintf(port->manufacturer, sizeof(port->manufacturer), "%x",
   resp.vid);
 snprintf(port->model_name, sizeof(port->model_name), "%x", resp.pid);

 return 0;
}
