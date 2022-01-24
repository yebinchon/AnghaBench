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
struct gpio_chip {int base; int of_gpio_n_cells; struct device_node* of_node; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  free; int /*<<< orphan*/  request; int /*<<< orphan*/  parent; int /*<<< orphan*/  label; } ;
struct device_node {int dummy; } ;
struct dc_pinmap {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; struct gpio_chip chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  PINS_COUNT ; 
 int /*<<< orphan*/  dc_gpio_direction_input ; 
 int /*<<< orphan*/  dc_gpio_direction_output ; 
 int /*<<< orphan*/  dc_gpio_get ; 
 int /*<<< orphan*/  dc_gpio_set ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gpio_chip*,struct dc_pinmap*) ; 
 int FUNC2 (struct gpio_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpiochip_generic_free ; 
 int /*<<< orphan*/  gpiochip_generic_request ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dc_pinmap *pmap, struct device_node *np)
{
	struct gpio_chip *chip = &pmap->chip;
	int ret;

	chip->label		= DRIVER_NAME;
	chip->parent		= pmap->dev;
	chip->request		= gpiochip_generic_request;
	chip->free		= gpiochip_generic_free;
	chip->direction_input	= dc_gpio_direction_input;
	chip->direction_output	= dc_gpio_direction_output;
	chip->get		= dc_gpio_get;
	chip->set		= dc_gpio_set;
	chip->base		= -1;
	chip->ngpio		= PINS_COUNT;
	chip->of_node		= np;
	chip->of_gpio_n_cells	= 2;

	FUNC4(&pmap->lock);

	ret = FUNC1(chip, pmap);
	if (ret < 0)
		return ret;

	ret = FUNC2(chip, FUNC0(pmap->dev), 0, 0,
				     PINS_COUNT);
	if (ret < 0) {
		FUNC3(chip);
		return ret;
	}

	return 0;
}