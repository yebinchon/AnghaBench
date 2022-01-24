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
struct spi_master {int bus_num; int num_chipselect; int /*<<< orphan*/  dev; int /*<<< orphan*/  transfer; int /*<<< orphan*/  setup; } ;
struct mmphw_ctrl {int /*<<< orphan*/  dev; void* reg_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  lcd_spi_one_transfer ; 
 int /*<<< orphan*/  lcd_spi_setup ; 
 struct spi_master* FUNC2 (int /*<<< orphan*/ ,int) ; 
 void** FUNC3 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_master*) ; 
 int FUNC5 (struct spi_master*) ; 

int FUNC6(struct mmphw_ctrl *ctrl)
{
	struct spi_master *master;
	void **p_regbase;
	int err;

	master = FUNC2(ctrl->dev, sizeof(void *));
	if (!master) {
		FUNC0(ctrl->dev, "unable to allocate SPI master\n");
		return -ENOMEM;
	}
	p_regbase = FUNC3(master);
	*p_regbase = ctrl->reg_base;

	/* set bus num to 5 to avoid conflict with other spi hosts */
	master->bus_num = 5;
	master->num_chipselect = 1;
	master->setup = lcd_spi_setup;
	master->transfer = lcd_spi_one_transfer;

	err = FUNC5(master);
	if (err < 0) {
		FUNC0(ctrl->dev, "unable to register SPI master\n");
		FUNC4(master);
		return err;
	}

	FUNC1(&master->dev, "registered\n");

	return 0;
}