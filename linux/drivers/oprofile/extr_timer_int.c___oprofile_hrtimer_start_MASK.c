#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hrtimer {int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL_PINNED ; 
 int /*<<< orphan*/  TICK_NSEC ; 
 int /*<<< orphan*/  ctr_running ; 
 int /*<<< orphan*/  FUNC0 (struct hrtimer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oprofile_hrtimer ; 
 int /*<<< orphan*/  oprofile_hrtimer_notify ; 
 struct hrtimer* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *unused)
{
	struct hrtimer *hrtimer = FUNC3(&oprofile_hrtimer);

	if (!ctr_running)
		return;

	FUNC0(hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	hrtimer->function = oprofile_hrtimer_notify;

	FUNC1(hrtimer, FUNC2(TICK_NSEC),
		      HRTIMER_MODE_REL_PINNED);
}