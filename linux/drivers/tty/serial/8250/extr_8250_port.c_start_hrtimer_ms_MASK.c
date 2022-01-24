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
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (struct hrtimer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long,long) ; 

__attribute__((used)) static void FUNC2(struct hrtimer *hrt, unsigned long msec)
{
	long sec = msec / 1000;
	long nsec = (msec % 1000) * 1000000;
	ktime_t t = FUNC1(sec, nsec);

	FUNC0(hrt, t, HRTIMER_MODE_REL);
}