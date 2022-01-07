
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_2__ {int min_volt; scalar_t__ active; } ;
struct tcpm_port {int supply_voltage; TYPE_1__ pps_data; } ;



__attribute__((used)) static int tcpm_psy_get_voltage_min(struct tcpm_port *port,
        union power_supply_propval *val)
{
 if (port->pps_data.active)
  val->intval = port->pps_data.min_volt * 1000;
 else
  val->intval = port->supply_voltage * 1000;

 return 0;
}
