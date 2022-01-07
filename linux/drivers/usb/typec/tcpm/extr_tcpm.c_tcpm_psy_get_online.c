
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_2__ {scalar_t__ active; } ;
struct tcpm_port {TYPE_1__ pps_data; scalar_t__ vbus_charge; } ;


 int TCPM_PSY_FIXED_ONLINE ;
 int TCPM_PSY_OFFLINE ;
 int TCPM_PSY_PROG_ONLINE ;

__attribute__((used)) static int tcpm_psy_get_online(struct tcpm_port *port,
          union power_supply_propval *val)
{
 if (port->vbus_charge) {
  if (port->pps_data.active)
   val->intval = TCPM_PSY_PROG_ONLINE;
  else
   val->intval = TCPM_PSY_FIXED_ONLINE;
 } else {
  val->intval = TCPM_PSY_OFFLINE;
 }

 return 0;
}
