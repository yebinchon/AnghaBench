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
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fwnode; } ;
struct fusb302_chip {int /*<<< orphan*/  wq; TYPE_1__ tcpc_dev; int /*<<< orphan*/  tcpm_port; int /*<<< orphan*/  bc_lvl_handler; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  gpio_int_n_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fusb302_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct fusb302_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct fusb302_chip* FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct fusb302_chip *chip = FUNC7(client);

	FUNC3(chip->gpio_int_n_irq);
	FUNC4(chip->gpio_int_n_irq, chip);
	FUNC1(&chip->irq_work);
	FUNC0(&chip->bc_lvl_handler);
	FUNC8(chip->tcpm_port);
	FUNC6(chip->tcpc_dev.fwnode);
	FUNC2(chip->wq);
	FUNC5(chip);

	return 0;
}