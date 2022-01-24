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
typedef  size_t u32 ;
struct wmt_pinctrl_data {size_t base; int /*<<< orphan*/  dev; TYPE_1__* banks; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {size_t reg_data_in; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int EINVAL ; 
 size_t NO_REG ; 
 size_t FUNC1 (unsigned int) ; 
 size_t FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct wmt_pinctrl_data* FUNC4 (struct gpio_chip*) ; 
 int FUNC5 (size_t) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset)
{
	struct wmt_pinctrl_data *data = FUNC4(chip);
	u32 bank = FUNC1(offset);
	u32 bit = FUNC2(offset);
	u32 reg_data_in = data->banks[bank].reg_data_in;

	if (reg_data_in == NO_REG) {
		FUNC3(data->dev, "no data in register defined\n");
		return -EINVAL;
	}

	return !!(FUNC5(data->base + reg_data_in) & FUNC0(bit));
}