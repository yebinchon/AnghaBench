
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_response_usb_pd_ports {int num_ports; } ;
struct charger_data {int dev; } ;
typedef int resp ;


 int EC_CMD_USB_PD_PORTS ;
 int cros_usbpd_charger_ec_command (struct charger_data*,int ,int ,int *,int ,struct ec_response_usb_pd_ports*,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int cros_usbpd_charger_get_usbpd_num_ports(struct charger_data *charger)
{
 struct ec_response_usb_pd_ports resp;
 int ret;

 ret = cros_usbpd_charger_ec_command(charger, 0, EC_CMD_USB_PD_PORTS,
         ((void*)0), 0, &resp, sizeof(resp));
 if (ret < 0) {
  dev_err(charger->dev,
   "Unable to get the number or ports (err:0x%x)\n", ret);
  return ret;
 }

 return resp.num_ports;
}
