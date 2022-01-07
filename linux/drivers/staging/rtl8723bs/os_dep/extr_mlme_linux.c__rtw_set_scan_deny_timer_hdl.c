
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int set_scan_deny_timer; } ;


 struct adapter* adapter ;
 struct adapter* from_timer (int ,struct timer_list*,int ) ;
 TYPE_1__ mlmepriv ;
 int rtw_clear_scan_deny (struct adapter*) ;

__attribute__((used)) static void _rtw_set_scan_deny_timer_hdl(struct timer_list *t)
{
 struct adapter *adapter =
  from_timer(adapter, t, mlmepriv.set_scan_deny_timer);

 rtw_clear_scan_deny(adapter);
}
