
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct tcpm_port {int dummy; } ;


 int EINVAL ;


 int tcpm_pps_activate (struct tcpm_port*,int) ;

__attribute__((used)) static int tcpm_psy_set_online(struct tcpm_port *port,
          const union power_supply_propval *val)
{
 int ret;

 switch (val->intval) {
 case 129:
  ret = tcpm_pps_activate(port, 0);
  break;
 case 128:
  ret = tcpm_pps_activate(port, 1);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
