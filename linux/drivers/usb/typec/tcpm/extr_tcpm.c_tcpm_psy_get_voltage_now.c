
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct tcpm_port {int supply_voltage; } ;



__attribute__((used)) static int tcpm_psy_get_voltage_now(struct tcpm_port *port,
        union power_supply_propval *val)
{
 val->intval = port->supply_voltage * 1000;

 return 0;
}
