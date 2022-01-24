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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct cros_ec_rtc {struct cros_ec_device* cros_ec; } ;
struct cros_ec_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_CMD_RTC_SET_VALUE ; 
 int EINVAL ; 
 scalar_t__ U32_MAX ; 
 int FUNC0 (struct cros_ec_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct cros_ec_rtc* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct cros_ec_rtc *cros_ec_rtc = FUNC2(dev);
	struct cros_ec_device *cros_ec = cros_ec_rtc->cros_ec;
	int ret;
	time64_t time;

	time = FUNC3(tm);
	if (time < 0 || time > U32_MAX)
		return -EINVAL;

	ret = FUNC0(cros_ec, EC_CMD_RTC_SET_VALUE, (u32)time);
	if (ret < 0) {
		FUNC1(dev, "error setting time: %d\n", ret);
		return ret;
	}

	return 0;
}