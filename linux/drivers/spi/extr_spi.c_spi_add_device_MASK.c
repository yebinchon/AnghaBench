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
struct spi_device {int chip_select; int /*<<< orphan*/  dev; int /*<<< orphan*/  cs_gpio; int /*<<< orphan*/  cs_gpiod; struct spi_controller* controller; } ;
struct TYPE_2__ {struct device* parent; } ;
struct spi_controller {int num_chipselect; int /*<<< orphan*/ * cs_gpios; int /*<<< orphan*/ * cs_gpiods; TYPE_1__ dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spi_bus_type ; 
 int /*<<< orphan*/  spi_dev_check ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*) ; 
 int FUNC8 (struct spi_device*) ; 

int FUNC9(struct spi_device *spi)
{
	static DEFINE_MUTEX(spi_add_lock);
	struct spi_controller *ctlr = spi->controller;
	struct device *dev = ctlr->dev.parent;
	int status;

	/* Chipselects are numbered 0..max; validate. */
	if (spi->chip_select >= ctlr->num_chipselect) {
		FUNC2(dev, "cs%d >= max %d\n", spi->chip_select,
			ctlr->num_chipselect);
		return -EINVAL;
	}

	/* Set the bus ID string */
	FUNC7(spi);

	/* We need to make sure there's no other device with this
	 * chipselect **BEFORE** we call setup(), else we'll trash
	 * its configuration.  Lock against concurrent add() calls.
	 */
	FUNC5(&spi_add_lock);

	status = FUNC0(&spi_bus_type, NULL, spi, spi_dev_check);
	if (status) {
		FUNC2(dev, "chipselect %d already in use\n",
				spi->chip_select);
		goto done;
	}

	/* Descriptors take precedence */
	if (ctlr->cs_gpiods)
		spi->cs_gpiod = ctlr->cs_gpiods[spi->chip_select];
	else if (ctlr->cs_gpios)
		spi->cs_gpio = ctlr->cs_gpios[spi->chip_select];

	/* Drivers may modify this initial i/o setup, but will
	 * normally rely on the device being setup.  Devices
	 * using SPI_CS_HIGH can't coexist well otherwise...
	 */
	status = FUNC8(spi);
	if (status < 0) {
		FUNC2(dev, "can't setup %s, status %d\n",
				FUNC3(&spi->dev), status);
		goto done;
	}

	/* Device may be bound to an active driver when this returns */
	status = FUNC4(&spi->dev);
	if (status < 0)
		FUNC2(dev, "can't add %s, status %d\n",
				FUNC3(&spi->dev), status);
	else
		FUNC1(dev, "registered child %s\n", FUNC3(&spi->dev));

done:
	FUNC6(&spi_add_lock);
	return status;
}