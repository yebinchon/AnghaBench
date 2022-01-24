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
typedef  int /*<<< orphan*/  time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct brcmstb_waketmr {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ BRCMSTB_WKTMR_COUNTER ; 
 struct brcmstb_waketmr* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
				   struct rtc_time *tm)
{
	struct brcmstb_waketmr *timer = FUNC0(dev);
	time64_t sec;

	sec = FUNC1(tm);

	FUNC2(sec, timer->base + BRCMSTB_WKTMR_COUNTER);

	return 0;
}