
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wkup_m3_ipc {int dummy; } ;
struct TYPE_2__ {int is_rtc_only; } ;


 TYPE_1__* m3_ipc_state ;

__attribute__((used)) static void wkup_m3_set_rtc_only(struct wkup_m3_ipc *m3_ipc)
{
 if (m3_ipc_state)
  m3_ipc_state->is_rtc_only = 1;
}
