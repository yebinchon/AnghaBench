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
struct wktmr_time {int /*<<< orphan*/  sec; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct brcmstb_waketmr {int dummy; } ;

/* Variables and functions */
 struct brcmstb_waketmr* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmstb_waketmr*,struct wktmr_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
				   struct rtc_time *tm)
{
	struct brcmstb_waketmr *timer = FUNC0(dev);
	struct wktmr_time now;

	FUNC2(timer, &now);

	FUNC1(now.sec, tm);

	return 0;
}