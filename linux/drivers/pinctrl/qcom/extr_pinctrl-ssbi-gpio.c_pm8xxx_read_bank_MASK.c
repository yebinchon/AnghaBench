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
struct pm8xxx_pin_data {int /*<<< orphan*/  reg; } ;
struct pm8xxx_gpio {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct pm8xxx_gpio *pctrl,
			    struct pm8xxx_pin_data *pin, int bank)
{
	unsigned int val = bank << 4;
	int ret;

	ret = FUNC2(pctrl->regmap, pin->reg, val);
	if (ret) {
		FUNC0(pctrl->dev, "failed to select bank %d\n", bank);
		return ret;
	}

	ret = FUNC1(pctrl->regmap, pin->reg, &val);
	if (ret) {
		FUNC0(pctrl->dev, "failed to read register %d\n", bank);
		return ret;
	}

	return val;
}