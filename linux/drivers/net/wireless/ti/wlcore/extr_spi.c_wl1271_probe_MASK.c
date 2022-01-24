#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wlcore_platdev_data {TYPE_1__* family; int /*<<< orphan*/ * if_ops; } ;
struct wl12xx_spi_glue {TYPE_3__* core; int /*<<< orphan*/ * dev; int /*<<< orphan*/  reg; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct resource {int flags; char* name; int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  res ;
struct TYPE_9__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_10__ {TYPE_2__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IORESOURCE_IRQ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int,int) ; 
 int FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*,struct wlcore_platdev_data*,int) ; 
 int FUNC10 (TYPE_3__*,struct resource*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  spi_ops ; 
 int /*<<< orphan*/  FUNC13 (struct spi_device*,struct wl12xx_spi_glue*) ; 
 int FUNC14 (struct spi_device*) ; 
 int FUNC15 (struct spi_device*,struct wl12xx_spi_glue*,struct wlcore_platdev_data*) ; 

__attribute__((used)) static int FUNC16(struct spi_device *spi)
{
	struct wl12xx_spi_glue *glue;
	struct wlcore_platdev_data *pdev_data;
	struct resource res[1];
	int ret;

	pdev_data = FUNC4(&spi->dev, sizeof(*pdev_data), GFP_KERNEL);
	if (!pdev_data)
		return -ENOMEM;

	pdev_data->if_ops = &spi_ops;

	glue = FUNC4(&spi->dev, sizeof(*glue), GFP_KERNEL);
	if (!glue) {
		FUNC3(&spi->dev, "can't allocate glue\n");
		return -ENOMEM;
	}

	glue->dev = &spi->dev;

	FUNC13(spi, glue);

	/* This is the only SPI value that we need to set here, the rest
	 * comes from the board-peripherals file */
	spi->bits_per_word = 32;

	glue->reg = FUNC5(&spi->dev, "vwlan");
	if (FUNC2(glue->reg) == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (FUNC1(glue->reg)) {
		FUNC3(glue->dev, "can't get regulator\n");
		return FUNC2(glue->reg);
	}

	ret = FUNC15(spi, glue, pdev_data);
	if (ret) {
		FUNC3(glue->dev,
			"can't get device tree parameters (%d)\n", ret);
		return ret;
	}

	ret = FUNC14(spi);
	if (ret < 0) {
		FUNC3(glue->dev, "spi_setup failed\n");
		return ret;
	}

	glue->core = FUNC11(pdev_data->family->name,
					   PLATFORM_DEVID_AUTO);
	if (!glue->core) {
		FUNC3(glue->dev, "can't allocate platform_device\n");
		return -ENOMEM;
	}

	glue->core->dev.parent = &spi->dev;

	FUNC7(res, 0x00, sizeof(res));

	res[0].start = spi->irq;
	res[0].flags = IORESOURCE_IRQ | FUNC6(spi->irq);
	res[0].name = "irq";

	ret = FUNC10(glue->core, res, FUNC0(res));
	if (ret) {
		FUNC3(glue->dev, "can't add resources\n");
		goto out_dev_put;
	}

	ret = FUNC9(glue->core, pdev_data,
				       sizeof(*pdev_data));
	if (ret) {
		FUNC3(glue->dev, "can't add platform data\n");
		goto out_dev_put;
	}

	ret = FUNC8(glue->core);
	if (ret) {
		FUNC3(glue->dev, "can't register platform device\n");
		goto out_dev_put;
	}

	return 0;

out_dev_put:
	FUNC12(glue->core);
	return ret;
}