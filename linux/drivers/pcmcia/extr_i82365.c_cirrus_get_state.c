
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_short ;
struct cirrus_state {int misc1; void** timer; void* misc2; } ;
struct TYPE_3__ {struct cirrus_state cirrus; } ;
struct TYPE_4__ {TYPE_1__ state; } ;


 int PD67_MC1_INPACK_ENA ;
 int PD67_MC1_MEDIA_ENA ;
 scalar_t__ PD67_MISC_CTL_1 ;
 scalar_t__ PD67_MISC_CTL_2 ;
 scalar_t__ PD67_TIME_SETUP (int ) ;
 void* i365_get (size_t,scalar_t__) ;
 TYPE_2__* socket ;

__attribute__((used)) static void cirrus_get_state(u_short s)
{
    int i;
    struct cirrus_state *p = &socket[s].state.cirrus;
    p->misc1 = i365_get(s, PD67_MISC_CTL_1);
    p->misc1 &= (PD67_MC1_MEDIA_ENA | PD67_MC1_INPACK_ENA);
    p->misc2 = i365_get(s, PD67_MISC_CTL_2);
    for (i = 0; i < 6; i++)
 p->timer[i] = i365_get(s, PD67_TIME_SETUP(0)+i);
}
