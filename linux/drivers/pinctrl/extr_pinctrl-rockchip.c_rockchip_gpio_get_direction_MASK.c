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
typedef  int u32 ;
struct rockchip_pin_bank {int /*<<< orphan*/  clk; scalar_t__ reg_base; int /*<<< orphan*/  name; TYPE_1__* drvdata; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ GPIO_SWPORT_DDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct rockchip_pin_bank* FUNC4 (struct gpio_chip*) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset)
{
	struct rockchip_pin_bank *bank = FUNC4(chip);
	u32 data;
	int ret;

	ret = FUNC2(bank->clk);
	if (ret < 0) {
		FUNC3(bank->drvdata->dev,
			"failed to enable clock for bank %s\n", bank->name);
		return ret;
	}
	data = FUNC5(bank->reg_base + GPIO_SWPORT_DDR);
	FUNC1(bank->clk);

	return !(data & FUNC0(offset));
}