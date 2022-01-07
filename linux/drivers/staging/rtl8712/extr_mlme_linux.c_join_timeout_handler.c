
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct _adapter {int dummy; } ;
struct TYPE_2__ {int assoc_timer; } ;


 int _r8712_join_timeout_handler (struct _adapter*) ;
 struct _adapter* adapter ;
 struct _adapter* from_timer (int ,struct timer_list*,int ) ;
 TYPE_1__ mlmepriv ;

__attribute__((used)) static void join_timeout_handler (struct timer_list *t)
{
 struct _adapter *adapter =
  from_timer(adapter, t, mlmepriv.assoc_timer);

 _r8712_join_timeout_handler(adapter);
}
