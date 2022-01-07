
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_2__ {int max_curr; scalar_t__ active; } ;
struct tcpm_port {int current_limit; TYPE_1__ pps_data; } ;



__attribute__((used)) static int tcpm_psy_get_current_max(struct tcpm_port *port,
        union power_supply_propval *val)
{
 if (port->pps_data.active)
  val->intval = port->pps_data.max_curr * 1000;
 else
  val->intval = port->current_limit * 1000;

 return 0;
}
