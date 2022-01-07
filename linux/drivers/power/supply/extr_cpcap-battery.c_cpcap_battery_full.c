
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpcap_battery_state_data {int voltage; } ;
struct TYPE_3__ {int voltage_max_design; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct cpcap_battery_ddata {TYPE_2__ config; } ;


 struct cpcap_battery_state_data* cpcap_battery_latest (struct cpcap_battery_ddata*) ;

__attribute__((used)) static bool cpcap_battery_full(struct cpcap_battery_ddata *ddata)
{
 struct cpcap_battery_state_data *state = cpcap_battery_latest(ddata);


 if (state->voltage >= (ddata->config.info.voltage_max_design - 4000))
  return 1;

 return 0;
}
