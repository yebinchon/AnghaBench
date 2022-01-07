
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int busetkipkey; } ;
struct _adapter {TYPE_1__ securitypriv; } ;
struct TYPE_4__ {int tkip_timer; } ;


 struct _adapter* from_timer (int ,struct timer_list*,int ) ;
 struct _adapter* padapter ;
 TYPE_2__ securitypriv ;

void r8712_use_tkipkey_handler(struct timer_list *t)
{
 struct _adapter *padapter =
  from_timer(padapter, t, securitypriv.tkip_timer);

 padapter->securitypriv.busetkipkey = 1;
}
