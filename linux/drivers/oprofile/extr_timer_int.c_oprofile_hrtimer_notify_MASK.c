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
struct hrtimer {int dummy; } ;
typedef  enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;

/* Variables and functions */
 int HRTIMER_RESTART ; 
 int /*<<< orphan*/  TICK_NSEC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum hrtimer_restart FUNC4(struct hrtimer *hrtimer)
{
	FUNC3(FUNC0(), 0);
	FUNC1(hrtimer, FUNC2(TICK_NSEC));
	return HRTIMER_RESTART;
}