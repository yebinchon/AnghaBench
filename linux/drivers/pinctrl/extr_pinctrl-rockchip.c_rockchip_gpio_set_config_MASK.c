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
struct gpio_chip {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_INPUT_DEBOUNCE 128 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned int offset,
				  unsigned long config)
{
	enum pin_config_param param = FUNC0(config);

	switch (param) {
	case PIN_CONFIG_INPUT_DEBOUNCE:
		FUNC1(gc, offset, true);
		/*
		 * Rockchip's gpio could only support up to one period
		 * of the debounce clock(pclk), which is far away from
		 * satisftying the requirement, as pclk is usually near
		 * 100MHz shared by all peripherals. So the fact is it
		 * has crippled debounce capability could only be useful
		 * to prevent any spurious glitches from waking up the system
		 * if the gpio is conguired as wakeup interrupt source. Let's
		 * still return -ENOTSUPP as before, to make sure the caller
		 * of gpiod_set_debounce won't change its behaviour.
		 */
		return -ENOTSUPP;
	default:
		return -ENOTSUPP;
	}
}