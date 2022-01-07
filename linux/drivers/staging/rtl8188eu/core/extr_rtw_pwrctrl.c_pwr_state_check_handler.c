
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int pwr_state_check_timer; } ;


 struct adapter* from_timer (int ,struct timer_list*,int ) ;
 struct adapter* padapter ;
 TYPE_1__ pwrctrlpriv ;
 int rtw_ps_cmd (struct adapter*) ;

__attribute__((used)) static void pwr_state_check_handler(struct timer_list *t)
{
 struct adapter *padapter =
  from_timer(padapter, t,
    pwrctrlpriv.pwr_state_check_timer);

 rtw_ps_cmd(padapter);
}
