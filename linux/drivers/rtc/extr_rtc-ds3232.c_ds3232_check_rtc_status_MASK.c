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
struct ds3232 {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS3232_REG_CR ; 
 int DS3232_REG_CR_A1IE ; 
 int DS3232_REG_CR_A2IE ; 
 int DS3232_REG_CR_INTCN ; 
 int /*<<< orphan*/  DS3232_REG_SR ; 
 int DS3232_REG_SR_A1F ; 
 int DS3232_REG_SR_A2F ; 
 int DS3232_REG_SR_OSF ; 
 struct ds3232* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct ds3232 *ds3232 = FUNC0(dev);
	int ret = 0;
	int control, stat;

	ret = FUNC2(ds3232->regmap, DS3232_REG_SR, &stat);
	if (ret)
		return ret;

	if (stat & DS3232_REG_SR_OSF)
		FUNC1(dev,
				"oscillator discontinuity flagged, "
				"time unreliable\n");

	stat &= ~(DS3232_REG_SR_OSF | DS3232_REG_SR_A1F | DS3232_REG_SR_A2F);

	ret = FUNC3(ds3232->regmap, DS3232_REG_SR, stat);
	if (ret)
		return ret;

	/* If the alarm is pending, clear it before requesting
	 * the interrupt, so an interrupt event isn't reported
	 * before everything is initialized.
	 */

	ret = FUNC2(ds3232->regmap, DS3232_REG_CR, &control);
	if (ret)
		return ret;

	control &= ~(DS3232_REG_CR_A1IE | DS3232_REG_CR_A2IE);
	control |= DS3232_REG_CR_INTCN;

	return FUNC3(ds3232->regmap, DS3232_REG_CR, control);
}