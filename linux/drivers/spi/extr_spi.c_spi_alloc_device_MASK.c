#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct spi_device {TYPE_2__ dev; TYPE_1__ statistics; int /*<<< orphan*/  cs_gpio; struct spi_controller* controller; struct spi_controller* master; } ;
struct spi_controller {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct spi_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spi_bus_type ; 
 int /*<<< orphan*/  FUNC2 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_controller*) ; 
 int /*<<< orphan*/  spidev_release ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct spi_device *FUNC5(struct spi_controller *ctlr)
{
	struct spi_device	*spi;

	if (!FUNC2(ctlr))
		return NULL;

	spi = FUNC1(sizeof(*spi), GFP_KERNEL);
	if (!spi) {
		FUNC3(ctlr);
		return NULL;
	}

	spi->master = spi->controller = ctlr;
	spi->dev.parent = &ctlr->dev;
	spi->dev.bus = &spi_bus_type;
	spi->dev.release = spidev_release;
	spi->cs_gpio = -ENOENT;

	FUNC4(&spi->statistics.lock);

	FUNC0(&spi->dev);
	return spi;
}