#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct ds3232 {scalar_t__ irq; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS3232_REG_ALARM1 ; 
 int /*<<< orphan*/  DS3232_REG_CR ; 
 int DS3232_REG_CR_A1IE ; 
 int DS3232_REG_CR_A2IE ; 
 int /*<<< orphan*/  DS3232_REG_SR ; 
 int DS3232_REG_SR_A1F ; 
 int DS3232_REG_SR_A2F ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ds3232* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct ds3232 *ds3232 = FUNC1(dev);
	int control, stat;
	int ret;
	u8 buf[4];

	if (ds3232->irq <= 0)
		return -EINVAL;

	buf[0] = FUNC0(alarm->time.tm_sec);
	buf[1] = FUNC0(alarm->time.tm_min);
	buf[2] = FUNC0(alarm->time.tm_hour);
	buf[3] = FUNC0(alarm->time.tm_mday);

	/* clear alarm interrupt enable bit */
	ret = FUNC3(ds3232->regmap, DS3232_REG_CR, &control);
	if (ret)
		goto out;
	control &= ~(DS3232_REG_CR_A1IE | DS3232_REG_CR_A2IE);
	ret = FUNC4(ds3232->regmap, DS3232_REG_CR, control);
	if (ret)
		goto out;

	/* clear any pending alarm flag */
	ret = FUNC3(ds3232->regmap, DS3232_REG_SR, &stat);
	if (ret)
		goto out;
	stat &= ~(DS3232_REG_SR_A1F | DS3232_REG_SR_A2F);
	ret = FUNC4(ds3232->regmap, DS3232_REG_SR, stat);
	if (ret)
		goto out;

	ret = FUNC2(ds3232->regmap, DS3232_REG_ALARM1, buf, 4);
	if (ret)
		goto out;

	if (alarm->enabled) {
		control |= DS3232_REG_CR_A1IE;
		ret = FUNC4(ds3232->regmap, DS3232_REG_CR, control);
	}
out:
	return ret;
}