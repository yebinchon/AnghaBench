#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct lcd_device {int dummy; } ;
struct hx8357_data {int reset; int use_im_pins; int* im_pins; struct spi_device* spi; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int HX8357_NUM_IM_PINS ; 
 scalar_t__ FUNC0 (struct lcd_device*) ; 
 int FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,char*) ; 
 struct hx8357_data* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct lcd_device* FUNC6 (TYPE_1__*,char*,TYPE_1__*,struct hx8357_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  hx8357_dt_ids ; 
 int /*<<< orphan*/  FUNC8 (struct lcd_device*) ; 
 int /*<<< orphan*/  hx8357_ops ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_device*,struct lcd_device*) ; 
 int FUNC13 (struct spi_device*) ; 
 int FUNC14 (struct lcd_device*) ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	struct lcd_device *lcdev;
	struct hx8357_data *lcd;
	const struct of_device_id *match;
	int i, ret;

	lcd = FUNC5(&spi->dev, sizeof(*lcd), GFP_KERNEL);
	if (!lcd)
		return -ENOMEM;

	ret = FUNC13(spi);
	if (ret < 0) {
		FUNC2(&spi->dev, "SPI setup failed.\n");
		return ret;
	}

	lcd->spi = spi;

	match = FUNC11(hx8357_dt_ids, &spi->dev);
	if (!match || !match->data)
		return -EINVAL;

	lcd->reset = FUNC10(spi->dev.of_node, "gpios-reset", 0);
	if (!FUNC7(lcd->reset)) {
		FUNC2(&spi->dev, "Missing dt property: gpios-reset\n");
		return -EINVAL;
	}

	ret = FUNC4(&spi->dev, lcd->reset,
				    GPIOF_OUT_INIT_HIGH,
				    "hx8357-reset");
	if (ret) {
		FUNC2(&spi->dev,
			"failed to request gpio %d: %d\n",
			lcd->reset, ret);
		return -EINVAL;
	}

	if (FUNC9(spi->dev.of_node, "im-gpios", NULL)) {
		lcd->use_im_pins = 1;

		for (i = 0; i < HX8357_NUM_IM_PINS; i++) {
			lcd->im_pins[i] = FUNC10(spi->dev.of_node,
							    "im-gpios", i);
			if (lcd->im_pins[i] == -EPROBE_DEFER) {
				FUNC3(&spi->dev, "GPIO requested is not here yet, deferring the probe\n");
				return -EPROBE_DEFER;
			}
			if (!FUNC7(lcd->im_pins[i])) {
				FUNC2(&spi->dev, "Missing dt property: im-gpios\n");
				return -EINVAL;
			}

			ret = FUNC4(&spi->dev, lcd->im_pins[i],
						    GPIOF_OUT_INIT_LOW,
						    "im_pins");
			if (ret) {
				FUNC2(&spi->dev, "failed to request gpio %d: %d\n",
					lcd->im_pins[i], ret);
				return -EINVAL;
			}
		}
	} else {
		lcd->use_im_pins = 0;
	}

	lcdev = FUNC6(&spi->dev, "mxsfb", &spi->dev, lcd,
					&hx8357_ops);
	if (FUNC0(lcdev)) {
		ret = FUNC1(lcdev);
		return ret;
	}
	FUNC12(spi, lcdev);

	FUNC8(lcdev);

	ret = ((int (*)(struct lcd_device *))match->data)(lcdev);
	if (ret) {
		FUNC2(&spi->dev, "Couldn't initialize panel\n");
		return ret;
	}

	FUNC3(&spi->dev, "Panel probed\n");

	return 0;
}