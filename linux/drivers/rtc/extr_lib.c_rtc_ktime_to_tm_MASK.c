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
struct timespec64 {int /*<<< orphan*/  tv_sec; scalar_t__ tv_nsec; } ;
struct rtc_time {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 struct timespec64 FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rtc_time*) ; 

struct rtc_time FUNC2(ktime_t kt)
{
	struct timespec64 ts;
	struct rtc_time ret;

	ts = FUNC0(kt);
	/* Round up any ns */
	if (ts.tv_nsec)
		ts.tv_sec++;
	FUNC1(ts.tv_sec, &ret);
	return ret;
}