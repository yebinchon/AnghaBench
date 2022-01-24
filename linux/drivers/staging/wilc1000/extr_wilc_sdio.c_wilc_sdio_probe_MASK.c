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
struct wilc_sdio {int dummy; } ;
struct wilc {struct gpio_desc* rtc_clk; struct gpio_desc* gpio_irq; int /*<<< orphan*/ * dev; struct wilc_sdio* bus_data; } ;
struct sdio_func {int /*<<< orphan*/  dev; TYPE_1__* card; } ;
struct sdio_device_id {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_WILC1000_HW_OOB_INTR ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIO_NUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  WILC_HIF_SDIO ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct gpio_desc* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct gpio_desc* FUNC7 (int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wilc_sdio*) ; 
 struct wilc_sdio* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sdio_func*,struct wilc*) ; 
 int FUNC12 (struct wilc**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wilc_hif_sdio ; 

__attribute__((used)) static int FUNC13(struct sdio_func *func,
			   const struct sdio_device_id *id)
{
	struct wilc *wilc;
	int ret;
	struct gpio_desc *gpio = NULL;
	struct wilc_sdio *sdio_priv;

	sdio_priv = FUNC10(sizeof(*sdio_priv), GFP_KERNEL);
	if (!sdio_priv)
		return -ENOMEM;

	if (FUNC0(CONFIG_WILC1000_HW_OOB_INTR)) {
		gpio = FUNC8(&func->dev, "irq", GPIOD_IN);
		if (FUNC1(gpio)) {
			/* get the GPIO descriptor from hardcode GPIO number */
			gpio = FUNC7(GPIO_NUM);
			if (!gpio)
				FUNC4(&func->dev, "failed to get irq gpio\n");
		}
	}

	ret = FUNC12(&wilc, &func->dev, WILC_HIF_SDIO,
				 &wilc_hif_sdio);
	if (ret) {
		FUNC9(sdio_priv);
		return ret;
	}
	FUNC11(func, wilc);
	wilc->bus_data = sdio_priv;
	wilc->dev = &func->dev;
	wilc->gpio_irq = gpio;

	wilc->rtc_clk = FUNC6(&func->card->dev, "rtc_clk");
	if (FUNC2(wilc->rtc_clk) == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	else if (!FUNC1(wilc->rtc_clk))
		FUNC3(wilc->rtc_clk);

	FUNC5(&func->dev, "Driver Initializing success\n");
	return 0;
}