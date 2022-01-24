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
struct stmp3xxx_rtc_data {scalar_t__ io; } ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ STMP3XXX_RTC_ALARM ; 
 struct stmp3xxx_rtc_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alm)
{
	struct stmp3xxx_rtc_data *rtc_data = FUNC0(dev);

	FUNC3(FUNC1(&alm->time), rtc_data->io + STMP3XXX_RTC_ALARM);

	FUNC2(dev, alm->enabled);

	return 0;
}