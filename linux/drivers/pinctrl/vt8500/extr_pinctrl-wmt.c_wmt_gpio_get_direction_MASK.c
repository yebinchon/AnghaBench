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
struct wmt_pinctrl_data {size_t base; TYPE_1__* banks; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {size_t reg_dir; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (unsigned int) ; 
 size_t FUNC2 (unsigned int) ; 
 struct wmt_pinctrl_data* FUNC3 (struct gpio_chip*) ; 
 size_t FUNC4 (size_t) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct wmt_pinctrl_data *data = FUNC3(chip);
	u32 bank = FUNC1(offset);
	u32 bit = FUNC2(offset);
	u32 reg_dir = data->banks[bank].reg_dir;
	u32 val;

	val = FUNC4(data->base + reg_dir);
	/* Return 0 == output, 1 == input */
	return !(val & FUNC0(bit));
}