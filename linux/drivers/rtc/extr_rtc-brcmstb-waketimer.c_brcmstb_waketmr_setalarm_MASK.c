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
typedef  scalar_t__ time64_t ;
struct rtc_wkalrm {int /*<<< orphan*/  time; scalar_t__ enabled; } ;
struct device {int dummy; } ;
struct brcmstb_waketmr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmstb_waketmr*,scalar_t__) ; 
 struct brcmstb_waketmr* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
				     struct rtc_wkalrm *alarm)
{
	struct brcmstb_waketmr *timer = FUNC1(dev);
	time64_t sec;

	if (alarm->enabled)
		sec = FUNC2(&alarm->time);
	else
		sec = 0;

	FUNC0(timer, sec);

	return 0;
}