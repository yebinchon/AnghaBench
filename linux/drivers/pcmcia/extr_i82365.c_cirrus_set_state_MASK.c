#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_short ;
typedef  int u_char ;
struct cirrus_state {int misc2; int misc1; int* timer; } ;
struct TYPE_3__ {struct cirrus_state cirrus; } ;
struct TYPE_4__ {TYPE_1__ state; } ;

/* Variables and functions */
 int PD67_MC1_INPACK_ENA ; 
 int PD67_MC1_MEDIA_ENA ; 
 int PD67_MC2_SUSPEND ; 
 scalar_t__ PD67_MISC_CTL_1 ; 
 scalar_t__ PD67_MISC_CTL_2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (size_t,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__* socket ; 

__attribute__((used)) static void FUNC4(u_short s)
{
    int i;
    u_char misc;
    struct cirrus_state *p = &socket[s].state.cirrus;

    misc = FUNC1(s, PD67_MISC_CTL_2);
    FUNC2(s, PD67_MISC_CTL_2, p->misc2);
    if (misc & PD67_MC2_SUSPEND) FUNC3(50);
    misc = FUNC1(s, PD67_MISC_CTL_1);
    misc &= ~(PD67_MC1_MEDIA_ENA | PD67_MC1_INPACK_ENA);
    FUNC2(s, PD67_MISC_CTL_1, misc | p->misc1);
    for (i = 0; i < 6; i++)
	FUNC2(s, FUNC0(0)+i, p->timer[i]);
}