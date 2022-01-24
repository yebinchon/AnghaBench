#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wl1251_platform_data {int power_gpio; int /*<<< orphan*/  use_eeprom; } ;
struct wl1251 {int power_gpio; scalar_t__ irq; struct ieee80211_hw* vio; int /*<<< orphan*/  use_eeprom; int /*<<< orphan*/ * if_ops; struct spi_device* if_priv; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct spi_device {int bits_per_word; scalar_t__ irq; TYPE_1__ dev; } ;
struct ieee80211_hw {struct wl1251* priv; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 scalar_t__ FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,TYPE_1__*) ; 
 struct wl1251_platform_data* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,char*) ; 
 struct ieee80211_hw* FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wl1251*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*) ; 
 int FUNC14 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_device*,struct wl1251*) ; 
 int FUNC16 (struct spi_device*) ; 
 struct ieee80211_hw* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int FUNC19 (struct wl1251*) ; 
 int /*<<< orphan*/  wl1251_irq ; 
 int /*<<< orphan*/  wl1251_spi_ops ; 

__attribute__((used)) static int FUNC20(struct spi_device *spi)
{
	struct wl1251_platform_data *pdata = FUNC3(&spi->dev);
	struct device_node *np = spi->dev.of_node;
	struct ieee80211_hw *hw;
	struct wl1251 *wl;
	int ret;

	if (!np && !pdata) {
		FUNC18("no platform data");
		return -ENODEV;
	}

	hw = FUNC17();
	if (FUNC0(hw))
		return FUNC1(hw);

	wl = hw->priv;

	FUNC2(hw, &spi->dev);
	FUNC15(spi, wl);
	wl->if_priv = spi;
	wl->if_ops = &wl1251_spi_ops;

	/* This is the only SPI value that we need to set here, the rest
	 * comes from the board-peripherals file
	 */
	spi->bits_per_word = 32;

	ret = FUNC16(spi);
	if (ret < 0) {
		FUNC18("spi_setup failed");
		goto out_free;
	}

	if (np) {
		wl->use_eeprom = FUNC12(np, "ti,wl1251-has-eeprom");
		wl->power_gpio = FUNC11(np, "ti,power-gpio", 0);
	} else if (pdata) {
		wl->power_gpio = pdata->power_gpio;
		wl->use_eeprom = pdata->use_eeprom;
	}

	if (wl->power_gpio == -EPROBE_DEFER) {
		ret = -EPROBE_DEFER;
		goto out_free;
	}

	if (FUNC7(wl->power_gpio)) {
		ret = FUNC4(&spi->dev, wl->power_gpio,
					GPIOF_OUT_INIT_LOW, "wl1251 power");
		if (ret) {
			FUNC18("Failed to request gpio: %d\n", ret);
			goto out_free;
		}
	} else {
		FUNC18("set power gpio missing in platform data");
		ret = -ENODEV;
		goto out_free;
	}

	wl->irq = spi->irq;
	if (wl->irq < 0) {
		FUNC18("irq missing in platform data");
		ret = -ENODEV;
		goto out_free;
	}

	FUNC10(wl->irq, IRQ_NOAUTOEN);
	ret = FUNC6(&spi->dev, wl->irq, wl1251_irq, 0,
							DRIVER_NAME, wl);
	if (ret < 0) {
		FUNC18("request_irq() failed: %d", ret);
		goto out_free;
	}

	FUNC9(wl->irq, IRQ_TYPE_EDGE_RISING);

	wl->vio = FUNC5(&spi->dev, "vio");
	if (FUNC0(wl->vio)) {
		ret = FUNC1(wl->vio);
		FUNC18("vio regulator missing: %d", ret);
		goto out_free;
	}

	ret = FUNC14(wl->vio);
	if (ret)
		goto out_free;

	ret = FUNC19(wl);
	if (ret)
		goto disable_regulator;

	return 0;

disable_regulator:
	FUNC13(wl->vio);
out_free:
	FUNC8(hw);

	return ret;
}