
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bios_rfkill2_state {int count; struct bios_rfkill2_device_state* device; } ;
struct bios_rfkill2_device_state {scalar_t__ rfkill_id; int power; } ;
typedef int state ;
struct TYPE_2__ {int num; scalar_t__ id; int rfkill; } ;


 int HPWMI_READ ;
 int HPWMI_WIRELESS2_QUERY ;
 int IS_HWBLOCKED (int ) ;
 int IS_SWBLOCKED (int ) ;
 int hp_wmi_perform_query (int ,int ,struct bios_rfkill2_state*,int ,int) ;
 int pr_warn (char*) ;
 TYPE_1__* rfkill2 ;
 int rfkill2_count ;
 int rfkill_set_states (int ,int ,int ) ;

__attribute__((used)) static int hp_wmi_rfkill2_refresh(void)
{
 struct bios_rfkill2_state state;
 int err, i;

 err = hp_wmi_perform_query(HPWMI_WIRELESS2_QUERY, HPWMI_READ, &state,
       0, sizeof(state));
 if (err)
  return err;

 for (i = 0; i < rfkill2_count; i++) {
  int num = rfkill2[i].num;
  struct bios_rfkill2_device_state *devstate;
  devstate = &state.device[num];

  if (num >= state.count ||
      devstate->rfkill_id != rfkill2[i].id) {
   pr_warn("power configuration of the wireless devices unexpectedly changed\n");
   continue;
  }

  rfkill_set_states(rfkill2[i].rfkill,
      IS_SWBLOCKED(devstate->power),
      IS_HWBLOCKED(devstate->power));
 }

 return 0;
}
