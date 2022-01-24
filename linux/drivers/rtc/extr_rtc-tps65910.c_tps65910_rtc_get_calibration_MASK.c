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
typedef  int u16 ;
struct tps65910 {int /*<<< orphan*/  regmap; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int s16 ;

/* Variables and functions */
 int NUM_COMP_REGS ; 
 int /*<<< orphan*/  TPS65910_RTC_COMP_LSB ; 
 int /*<<< orphan*/  TPS65910_RTC_CTRL ; 
 unsigned int TPS65910_RTC_CTRL_AUTO_COMP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct tps65910* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, int *calibration)
{
	unsigned char comp_data[NUM_COMP_REGS];
	struct tps65910 *tps = FUNC1(dev->parent);
	unsigned int ctrl;
	u16 value;
	int ret;

	ret = FUNC3(tps->regmap, TPS65910_RTC_CTRL, &ctrl);
	if (ret < 0)
		return ret;

	/* If automatic compensation is not enabled report back zero */
	if (!(ctrl & TPS65910_RTC_CTRL_AUTO_COMP)) {
		*calibration = 0;
		return 0;
	}

	ret = FUNC2(tps->regmap, TPS65910_RTC_COMP_LSB, comp_data,
		NUM_COMP_REGS);
	if (ret < 0) {
		FUNC0(dev, "rtc_get_calibration error: %d\n", ret);
		return ret;
	}

	value = (u16)comp_data[0] | ((u16)comp_data[1] << 8);

	*calibration = (s16)value;

	return 0;
}