
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct port_data {struct charger_data* charger; } ;
struct charger_data {int num_registered_psy; int * ports; } ;


 int cros_usbpd_charger_get_port_status (int ,int) ;
 struct port_data* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static void cros_usbpd_charger_power_changed(struct power_supply *psy)
{
 struct port_data *port = power_supply_get_drvdata(psy);
 struct charger_data *charger = port->charger;
 int i;

 for (i = 0; i < charger->num_registered_psy; i++)
  cros_usbpd_charger_get_port_status(charger->ports[i], 0);
}
