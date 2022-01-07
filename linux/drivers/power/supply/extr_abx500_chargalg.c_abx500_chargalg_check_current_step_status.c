
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int curr_step_change; } ;
struct abx500_chargalg {TYPE_1__ curr_status; } ;


 int STATE_NORMAL_INIT ;
 int abx500_chargalg_state_to (struct abx500_chargalg*,int ) ;

__attribute__((used)) static void abx500_chargalg_check_current_step_status
 (struct abx500_chargalg *di)
{
 if (di->curr_status.curr_step_change)
  abx500_chargalg_state_to(di, STATE_NORMAL_INIT);
 di->curr_status.curr_step_change = 0;
}
