
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_short ;
typedef int u_char ;
struct cirrus_state {int misc2; int misc1; int* timer; } ;
struct TYPE_3__ {struct cirrus_state cirrus; } ;
struct TYPE_4__ {TYPE_1__ state; } ;


 int PD67_MC1_INPACK_ENA ;
 int PD67_MC1_MEDIA_ENA ;
 int PD67_MC2_SUSPEND ;
 scalar_t__ PD67_MISC_CTL_1 ;
 scalar_t__ PD67_MISC_CTL_2 ;
 scalar_t__ PD67_TIME_SETUP (int ) ;
 int i365_get (size_t,scalar_t__) ;
 int i365_set (size_t,scalar_t__,int) ;
 int mdelay (int) ;
 TYPE_2__* socket ;

__attribute__((used)) static void cirrus_set_state(u_short s)
{
    int i;
    u_char misc;
    struct cirrus_state *p = &socket[s].state.cirrus;

    misc = i365_get(s, PD67_MISC_CTL_2);
    i365_set(s, PD67_MISC_CTL_2, p->misc2);
    if (misc & PD67_MC2_SUSPEND) mdelay(50);
    misc = i365_get(s, PD67_MISC_CTL_1);
    misc &= ~(PD67_MC1_MEDIA_ENA | PD67_MC1_INPACK_ENA);
    i365_set(s, PD67_MISC_CTL_1, misc | p->misc1);
    for (i = 0; i < 6; i++)
 i365_set(s, PD67_TIME_SETUP(0)+i, p->timer[i]);
}
