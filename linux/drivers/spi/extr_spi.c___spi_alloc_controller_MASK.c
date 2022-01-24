#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device* parent; int /*<<< orphan*/ * class; } ;
struct spi_controller {int bus_num; int num_chipselect; int slave; TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_SPI_SLAVE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct spi_controller* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_controller*,void*) ; 
 int /*<<< orphan*/  spi_master_class ; 
 int /*<<< orphan*/  spi_slave_class ; 

struct spi_controller *FUNC7(struct device *dev,
					      unsigned int size, bool slave)
{
	struct spi_controller	*ctlr;
	size_t ctlr_size = FUNC0(sizeof(*ctlr), FUNC3());

	if (!dev)
		return NULL;

	ctlr = FUNC4(size + ctlr_size, GFP_KERNEL);
	if (!ctlr)
		return NULL;

	FUNC2(&ctlr->dev);
	ctlr->bus_num = -1;
	ctlr->num_chipselect = 1;
	ctlr->slave = slave;
	if (FUNC1(CONFIG_SPI_SLAVE) && slave)
		ctlr->dev.class = &spi_slave_class;
	else
		ctlr->dev.class = &spi_master_class;
	ctlr->dev.parent = dev;
	FUNC5(&ctlr->dev, true);
	FUNC6(ctlr, (void *)ctlr + ctlr_size);

	return ctlr;
}