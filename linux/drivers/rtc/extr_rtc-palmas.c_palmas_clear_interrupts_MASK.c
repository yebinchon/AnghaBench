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
struct palmas {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  PALMAS_RTC_BASE ; 
 int /*<<< orphan*/  PALMAS_RTC_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct palmas* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct palmas *palmas = FUNC1(dev->parent);
	unsigned int rtc_reg;
	int ret;

	ret = FUNC2(palmas, PALMAS_RTC_BASE, PALMAS_RTC_STATUS_REG,
				&rtc_reg);
	if (ret < 0) {
		FUNC0(dev, "RTC_STATUS read failed, err = %d\n", ret);
		return ret;
	}

	ret = FUNC3(palmas, PALMAS_RTC_BASE, PALMAS_RTC_STATUS_REG,
			rtc_reg);
	if (ret < 0) {
		FUNC0(dev, "RTC_STATUS write failed, err = %d\n", ret);
		return ret;
	}
	return 0;
}