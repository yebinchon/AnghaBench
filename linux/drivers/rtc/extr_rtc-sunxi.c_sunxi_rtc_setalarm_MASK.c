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
typedef  int u32 ;
typedef  int time64_t ;
struct sunxi_rtc_dev {scalar_t__ base; } ;
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; struct rtc_time time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SEC_IN_DAY ; 
 unsigned long SEC_IN_HOUR ; 
 unsigned long SEC_IN_MIN ; 
 scalar_t__ SUNXI_ALRM_DHMS ; 
 scalar_t__ SUNXI_ALRM_IRQ_EN ; 
 int SUNXI_ALRM_IRQ_EN_CNT_IRQ_EN ; 
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct sunxi_rtc_dev* FUNC5 (struct device*) ; 
 int FUNC6 (struct rtc_time*,struct rtc_time*) ; 
 int FUNC7 (struct device*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sunxi_rtc_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct device *dev, struct rtc_wkalrm *wkalrm)
{
	struct sunxi_rtc_dev *chip = FUNC5(dev);
	struct rtc_time *alrm_tm = &wkalrm->time;
	struct rtc_time tm_now;
	u32 alrm;
	time64_t diff;
	unsigned long time_gap;
	unsigned long time_gap_day;
	unsigned long time_gap_hour;
	unsigned long time_gap_min;
	int ret;

	ret = FUNC7(dev, &tm_now);
	if (ret < 0) {
		FUNC4(dev, "Error in getting time\n");
		return -EINVAL;
	}

	diff = FUNC6(alrm_tm, &tm_now);
	if (diff <= 0) {
		FUNC4(dev, "Date to set in the past\n");
		return -EINVAL;
	}

	if (diff > 255 * SEC_IN_DAY) {
		FUNC4(dev, "Day must be in the range 0 - 255\n");
		return -EINVAL;
	}

	time_gap = diff;
	time_gap_day = time_gap / SEC_IN_DAY;
	time_gap -= time_gap_day * SEC_IN_DAY;
	time_gap_hour = time_gap / SEC_IN_HOUR;
	time_gap -= time_gap_hour * SEC_IN_HOUR;
	time_gap_min = time_gap / SEC_IN_MIN;
	time_gap -= time_gap_min * SEC_IN_MIN;

	FUNC8(0, chip);
	FUNC10(0, chip->base + SUNXI_ALRM_DHMS);
	FUNC9(100, 300);

	alrm = FUNC3(time_gap) |
		FUNC2(time_gap_min) |
		FUNC1(time_gap_hour) |
		FUNC0(time_gap_day);
	FUNC10(alrm, chip->base + SUNXI_ALRM_DHMS);

	FUNC10(0, chip->base + SUNXI_ALRM_IRQ_EN);
	FUNC10(SUNXI_ALRM_IRQ_EN_CNT_IRQ_EN, chip->base + SUNXI_ALRM_IRQ_EN);

	FUNC8(wkalrm->enabled, chip);

	return 0;
}