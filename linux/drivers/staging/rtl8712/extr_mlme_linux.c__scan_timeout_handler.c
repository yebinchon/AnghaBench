
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct _adapter {int dummy; } ;
struct TYPE_2__ {int scan_to_timer; } ;


 struct _adapter* adapter ;
 struct _adapter* from_timer (int ,struct timer_list*,int ) ;
 TYPE_1__ mlmepriv ;
 int r8712_scan_timeout_handler (struct _adapter*) ;

__attribute__((used)) static void _scan_timeout_handler (struct timer_list *t)
{
 struct _adapter *adapter =
  from_timer(adapter, t, mlmepriv.scan_to_timer);

 r8712_scan_timeout_handler(adapter);
}
