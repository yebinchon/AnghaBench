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
struct pcf2123_data {int /*<<< orphan*/  map; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int CTRL1_CLEAR ; 
 unsigned int CTRL1_STOP ; 
 unsigned int CTRL1_SW_RESET ; 
 int ENODEV ; 
 int /*<<< orphan*/  PCF2123_REG_CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct pcf2123_data* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct pcf2123_data *pcf2123 = FUNC1(dev);
	int ret;
	unsigned int val = 0;

	ret = FUNC3(pcf2123->map, PCF2123_REG_CTRL1, CTRL1_SW_RESET);
	if (ret)
		return ret;

	/* Stop the counter */
	FUNC0(dev, "stopping RTC\n");
	ret = FUNC3(pcf2123->map, PCF2123_REG_CTRL1, CTRL1_STOP);
	if (ret)
		return ret;

	/* See if the counter was actually stopped */
	FUNC0(dev, "checking for presence of RTC\n");
	ret = FUNC2(pcf2123->map, PCF2123_REG_CTRL1, &val);
	if (ret)
		return ret;

	FUNC0(dev, "received data from RTC (0x%08X)\n", val);
	if (!(val & CTRL1_STOP))
		return -ENODEV;

	/* Start the counter */
	ret = FUNC3(pcf2123->map, PCF2123_REG_CTRL1, CTRL1_CLEAR);
	if (ret)
		return ret;

	return 0;
}