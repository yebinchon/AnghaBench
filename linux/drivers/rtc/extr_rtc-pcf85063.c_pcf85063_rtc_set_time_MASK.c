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
typedef  int u8 ;
struct rtc_time {int tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct pcf85063 {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  regs ;

/* Variables and functions */
 int /*<<< orphan*/  PCF85063_REG_CTRL1 ; 
 int /*<<< orphan*/  PCF85063_REG_CTRL1_STOP ; 
 int /*<<< orphan*/  PCF85063_REG_SC ; 
 int FUNC0 (scalar_t__) ; 
 struct pcf85063* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct pcf85063 *pcf85063 = FUNC1(dev);
	int rc;
	u8 regs[7];

	/*
	 * to accurately set the time, reset the divider chain and keep it in
	 * reset state until all time/date registers are written
	 */
	rc = FUNC3(pcf85063->regmap, PCF85063_REG_CTRL1,
				PCF85063_REG_CTRL1_STOP,
				PCF85063_REG_CTRL1_STOP);
	if (rc)
		return rc;

	/* hours, minutes and seconds */
	regs[0] = FUNC0(tm->tm_sec) & 0x7F; /* clear OS flag */

	regs[1] = FUNC0(tm->tm_min);
	regs[2] = FUNC0(tm->tm_hour);

	/* Day of month, 1 - 31 */
	regs[3] = FUNC0(tm->tm_mday);

	/* Day, 0 - 6 */
	regs[4] = tm->tm_wday & 0x07;

	/* month, 1 - 12 */
	regs[5] = FUNC0(tm->tm_mon + 1);

	/* year and century */
	regs[6] = FUNC0(tm->tm_year - 100);

	/* write all registers at once */
	rc = FUNC2(pcf85063->regmap, PCF85063_REG_SC,
			       regs, sizeof(regs));
	if (rc)
		return rc;

	/*
	 * Write the control register as a separate action since the size of
	 * the register space is different between the PCF85063TP and
	 * PCF85063A devices.  The rollover point can not be used.
	 */
	return FUNC3(pcf85063->regmap, PCF85063_REG_CTRL1,
				  PCF85063_REG_CTRL1_STOP, 0);
}