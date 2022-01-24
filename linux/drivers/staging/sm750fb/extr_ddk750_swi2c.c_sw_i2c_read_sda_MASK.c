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

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int sw_i2c_data_gpio ; 
 int /*<<< orphan*/  sw_i2c_data_gpio_data_dir_reg ; 
 int /*<<< orphan*/  sw_i2c_data_gpio_data_reg ; 

__attribute__((used)) static unsigned char FUNC2(void)
{
	unsigned long gpio_dir;
	unsigned long gpio_data;
	unsigned long dir_mask = 1 << sw_i2c_data_gpio;

	/* Make sure that the direction is input (High) */
	gpio_dir = FUNC0(sw_i2c_data_gpio_data_dir_reg);
	if ((gpio_dir & dir_mask) != ~dir_mask) {
		gpio_dir &= ~(1 << sw_i2c_data_gpio);
		FUNC1(sw_i2c_data_gpio_data_dir_reg, gpio_dir);
	}

	/* Now read the SDA line */
	gpio_data = FUNC0(sw_i2c_data_gpio_data_reg);
	if (gpio_data & (1 << sw_i2c_data_gpio))
		return 1;
	else
		return 0;
}