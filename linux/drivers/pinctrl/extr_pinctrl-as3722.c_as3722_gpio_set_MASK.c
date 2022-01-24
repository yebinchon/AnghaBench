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
struct gpio_chip {int dummy; } ;
struct as3722_pctrl_info {int /*<<< orphan*/  dev; struct as3722* as3722; } ;
struct as3722 {int dummy; } ;

/* Variables and functions */
 int AS3722_GPIO_INV ; 
 int /*<<< orphan*/  AS3722_GPIO_SIGNAL_OUT_REG ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct as3722*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct as3722*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct as3722_pctrl_info* FUNC5 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC6(struct gpio_chip *chip, unsigned offset,
		int value)
{
	struct as3722_pctrl_info *as_pci = FUNC5(chip);
	struct as3722 *as3722 = as_pci->as3722;
	int en_invert;
	u32 val;
	int ret;

	ret = FUNC2(as3722, FUNC0(offset), &val);
	if (ret < 0) {
		FUNC4(as_pci->dev,
			"GPIO_CONTROL%d_REG read failed: %d\n", offset, ret);
		return;
	}
	en_invert = !!(val & AS3722_GPIO_INV);

	if (value)
		val = (en_invert) ? 0 : FUNC1(offset);
	else
		val = (en_invert) ? FUNC1(offset) : 0;

	ret = FUNC3(as3722, AS3722_GPIO_SIGNAL_OUT_REG,
			FUNC1(offset), val);
	if (ret < 0)
		FUNC4(as_pci->dev,
			"GPIO_SIGNAL_OUT_REG update failed: %d\n", ret);
}