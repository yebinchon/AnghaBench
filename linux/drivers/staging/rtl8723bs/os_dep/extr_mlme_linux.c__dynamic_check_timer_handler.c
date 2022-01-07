
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int dynamic_chk_timer; } ;
struct adapter {TYPE_1__ mlmepriv; } ;
struct TYPE_4__ {int dynamic_chk_timer; } ;


 int _set_timer (int *,int) ;
 struct adapter* adapter ;
 struct adapter* from_timer (int ,struct timer_list*,int ) ;
 TYPE_2__ mlmepriv ;
 int rtw_dynamic_check_timer_handler (struct adapter*) ;

__attribute__((used)) static void _dynamic_check_timer_handler(struct timer_list *t)
{
 struct adapter *adapter =
  from_timer(adapter, t, mlmepriv.dynamic_chk_timer);

 rtw_dynamic_check_timer_handler(adapter);

 _set_timer(&adapter->mlmepriv.dynamic_chk_timer, 2000);
}
