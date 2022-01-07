
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_battery_state_data {int dummy; } ;
struct cpcap_battery_ddata {int dummy; } ;


 int CPCAP_BATTERY_STATE_LATEST ;
 struct cpcap_battery_state_data* cpcap_battery_get_state (struct cpcap_battery_ddata*,int ) ;

__attribute__((used)) static struct cpcap_battery_state_data *
cpcap_battery_latest(struct cpcap_battery_ddata *ddata)
{
 return cpcap_battery_get_state(ddata, CPCAP_BATTERY_STATE_LATEST);
}
