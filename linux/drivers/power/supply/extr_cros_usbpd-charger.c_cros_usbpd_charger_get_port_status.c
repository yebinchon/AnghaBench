
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_data {scalar_t__ last_update; } ;


 scalar_t__ CHARGER_CACHE_UPDATE_DELAY ;
 int cros_usbpd_charger_get_discovery_info (struct port_data*) ;
 int cros_usbpd_charger_get_power_info (struct port_data*) ;
 int cros_usbpd_charger_port_is_dedicated (struct port_data*) ;
 scalar_t__ jiffies ;
 scalar_t__ time_is_after_jiffies (scalar_t__) ;

__attribute__((used)) static int cros_usbpd_charger_get_port_status(struct port_data *port,
           bool ratelimit)
{
 int ret;

 if (ratelimit &&
     time_is_after_jiffies(port->last_update +
      CHARGER_CACHE_UPDATE_DELAY))
  return 0;

 ret = cros_usbpd_charger_get_power_info(port);
 if (ret < 0)
  return ret;

 if (!cros_usbpd_charger_port_is_dedicated(port))
  ret = cros_usbpd_charger_get_discovery_info(port);
 port->last_update = jiffies;

 return ret;
}
