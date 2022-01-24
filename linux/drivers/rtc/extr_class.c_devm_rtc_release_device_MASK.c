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
struct rtc_device {int /*<<< orphan*/  dev; scalar_t__ registered; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev, void *res)
{
	struct rtc_device *rtc = *(struct rtc_device **)res;

	FUNC2(rtc);

	if (rtc->registered)
		FUNC1(rtc);
	else
		FUNC0(&rtc->dev);
}