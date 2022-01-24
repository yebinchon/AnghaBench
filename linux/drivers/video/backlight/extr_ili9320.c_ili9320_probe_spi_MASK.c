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
struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct lcd_device {int dummy; } ;
struct ili9320_platdata {scalar_t__ hsize; scalar_t__ vsize; int /*<<< orphan*/ * reset; } ;
struct ili9320_client {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ spi; } ;
struct ili9320 {struct lcd_device* lcd; struct ili9320_platdata* platdata; int /*<<< orphan*/  power; struct ili9320_client* client; struct device* dev; TYPE_2__ access; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int) ; 
 int ILI9320_SPI_IDCODE ; 
 scalar_t__ FUNC1 (struct lcd_device*) ; 
 int FUNC2 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct ili9320_platdata* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ili9320* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct lcd_device* FUNC7 (struct device*,char*,struct device*,struct ili9320*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ili9320_ops ; 
 int FUNC8 (struct ili9320*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ili9320*,struct spi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct ili9320*) ; 

int FUNC11(struct spi_device *spi,
				struct ili9320_client *client)
{
	struct ili9320_platdata *cfg = FUNC4(&spi->dev);
	struct device *dev = &spi->dev;
	struct ili9320 *ili;
	struct lcd_device *lcd;
	int ret = 0;

	/* verify we where given some information */

	if (cfg == NULL) {
		FUNC3(dev, "no platform data supplied\n");
		return -EINVAL;
	}

	if (cfg->hsize <= 0 || cfg->vsize <= 0 || cfg->reset == NULL) {
		FUNC3(dev, "invalid platform data supplied\n");
		return -EINVAL;
	}

	/* allocate and initialse our state */

	ili = FUNC6(&spi->dev, sizeof(struct ili9320), GFP_KERNEL);
	if (ili == NULL)
		return -ENOMEM;

	ili->access.spi.id = ILI9320_SPI_IDCODE | FUNC0(1);

	ili->dev = dev;
	ili->client = client;
	ili->power = FB_BLANK_POWERDOWN;
	ili->platdata = cfg;

	FUNC10(spi, ili);

	FUNC9(ili, spi);

	lcd = FUNC7(&spi->dev, "ili9320", dev, ili,
					&ili9320_ops);
	if (FUNC1(lcd)) {
		FUNC3(dev, "failed to register lcd device\n");
		return FUNC2(lcd);
	}

	ili->lcd = lcd;

	FUNC5(dev, "initialising %s\n", client->name);

	ret = FUNC8(ili, FB_BLANK_UNBLANK);
	if (ret != 0) {
		FUNC3(dev, "failed to set lcd power state\n");
		return ret;
	}

	return 0;
}