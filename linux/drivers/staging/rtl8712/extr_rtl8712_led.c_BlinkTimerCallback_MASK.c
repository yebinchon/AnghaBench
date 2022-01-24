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
struct LED_871x {int /*<<< orphan*/  BlinkWorkItem; TYPE_1__* padapter; } ;
struct TYPE_2__ {scalar_t__ driver_stopped; scalar_t__ surprise_removed; } ;

/* Variables and functions */
 int /*<<< orphan*/  BlinkTimer ; 
 struct LED_871x* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct LED_871x* pLed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct LED_871x  *pLed = FUNC0(pLed, t, BlinkTimer);

	/* This fixed the crash problem on Fedora 12 when trying to do the
	 * insmod;ifconfig up;rmmod commands.
	 */
	if (pLed->padapter->surprise_removed || pLed->padapter->driver_stopped)
		return;
	FUNC1(&pLed->BlinkWorkItem);
}