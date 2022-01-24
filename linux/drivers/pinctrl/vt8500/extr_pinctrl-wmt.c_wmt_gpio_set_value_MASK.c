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
struct wmt_pinctrl_data {int /*<<< orphan*/  dev; TYPE_1__* banks; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {size_t reg_data_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t NO_REG ; 
 size_t FUNC1 (unsigned int) ; 
 size_t FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct wmt_pinctrl_data* FUNC4 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct wmt_pinctrl_data*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wmt_pinctrl_data*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct gpio_chip *chip, unsigned offset,
			       int val)
{
	struct wmt_pinctrl_data *data = FUNC4(chip);
	u32 bank = FUNC1(offset);
	u32 bit = FUNC2(offset);
	u32 reg_data_out = data->banks[bank].reg_data_out;

	if (reg_data_out == NO_REG) {
		FUNC3(data->dev, "no data out register defined\n");
		return;
	}

	if (val)
		FUNC6(data, reg_data_out, FUNC0(bit));
	else
		FUNC5(data, reg_data_out, FUNC0(bit));
}