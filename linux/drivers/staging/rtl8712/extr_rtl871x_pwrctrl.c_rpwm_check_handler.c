
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct _adapter {int dummy; } ;
struct TYPE_2__ {int rpwm_check_timer; } ;


 int _rpwm_check_handler (struct _adapter*) ;
 struct _adapter* adapter ;
 struct _adapter* from_timer (int ,struct timer_list*,int ) ;
 TYPE_1__ pwrctrlpriv ;

__attribute__((used)) static void rpwm_check_handler (struct timer_list *t)
{
 struct _adapter *adapter =
  from_timer(adapter, t, pwrctrlpriv.rpwm_check_timer);

 _rpwm_check_handler(adapter);
}
