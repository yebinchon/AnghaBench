#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pwr_state_check_timer; } ;

/* Variables and functions */
 struct adapter* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct adapter* padapter ; 
 TYPE_1__ pwrctrlpriv ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct adapter *padapter =
		FUNC0(padapter, t,
				pwrctrlpriv.pwr_state_check_timer);

	FUNC1(padapter);
}