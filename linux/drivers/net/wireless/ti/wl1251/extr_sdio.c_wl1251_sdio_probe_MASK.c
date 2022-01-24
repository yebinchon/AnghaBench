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
struct wl1251_sdio {struct sdio_func* func; } ;
struct wl1251_platform_data {int /*<<< orphan*/  use_eeprom; scalar_t__ irq; int /*<<< orphan*/  power_gpio; struct wl1251* priv; } ;
struct wl1251 {scalar_t__ irq; int /*<<< orphan*/  power_gpio; int /*<<< orphan*/  use_eeprom; TYPE_1__* if_ops; struct wl1251_sdio* if_priv; } ;
struct sdio_func {int /*<<< orphan*/  dev; } ;
struct sdio_device_id {int dummy; } ;
typedef  struct ieee80211_hw {int /*<<< orphan*/  use_eeprom; scalar_t__ irq; int /*<<< orphan*/  power_gpio; struct wl1251* priv; } const ieee80211_hw ;
struct TYPE_2__ {int /*<<< orphan*/  disable_irq; int /*<<< orphan*/  enable_irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 scalar_t__ FUNC0 (struct wl1251_platform_data const*) ; 
 int FUNC1 (struct wl1251_platform_data const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1251_platform_data const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct wl1251*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1251_sdio*) ; 
 struct wl1251_sdio* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wl1251*) ; 
 int /*<<< orphan*/  FUNC12 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC13 (struct sdio_func*) ; 
 int FUNC14 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC15 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC16 (struct sdio_func*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sdio_func*,struct wl1251*) ; 
 struct wl1251_platform_data* FUNC18 () ; 
 int /*<<< orphan*/  wl1251_disable_line_irq ; 
 int /*<<< orphan*/  wl1251_enable_line_irq ; 
 int /*<<< orphan*/  FUNC19 (char*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct wl1251*) ; 
 struct wl1251_platform_data* FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int FUNC23 (struct wl1251*) ; 
 int /*<<< orphan*/  wl1251_line_irq ; 
 int /*<<< orphan*/  wl1251_sdio_disable_irq ; 
 int /*<<< orphan*/  wl1251_sdio_enable_irq ; 
 TYPE_1__ wl1251_sdio_ops ; 

__attribute__((used)) static int FUNC24(struct sdio_func *func,
			     const struct sdio_device_id *id)
{
	int ret;
	struct wl1251 *wl;
	struct ieee80211_hw *hw;
	struct wl1251_sdio *wl_sdio;
	const struct wl1251_platform_data *wl1251_board_data;

	hw = FUNC18();
	if (FUNC0(hw))
		return FUNC1(hw);

	wl = hw->priv;

	wl_sdio = FUNC9(sizeof(*wl_sdio), GFP_KERNEL);
	if (wl_sdio == NULL) {
		ret = -ENOMEM;
		goto out_free_hw;
	}

	FUNC12(func);
	ret = FUNC14(func);
	if (ret)
		goto release;

	FUNC16(func, 512);
	FUNC15(func);

	FUNC2(hw, &func->dev);
	wl_sdio->func = func;
	wl->if_priv = wl_sdio;
	wl->if_ops = &wl1251_sdio_ops;

	wl1251_board_data = FUNC21();
	if (!FUNC0(wl1251_board_data)) {
		wl->power_gpio = wl1251_board_data->power_gpio;
		wl->irq = wl1251_board_data->irq;
		wl->use_eeprom = wl1251_board_data->use_eeprom;
	}

	if (FUNC5(wl->power_gpio)) {
		ret = FUNC3(&func->dev, wl->power_gpio,
								"wl1251 power");
		if (ret) {
			FUNC19("Failed to request gpio: %d\n", ret);
			goto disable;
		}
	}

	if (wl->irq) {
		FUNC7(wl->irq, IRQ_NOAUTOEN);
		ret = FUNC11(wl->irq, wl1251_line_irq, 0, "wl1251", wl);
		if (ret < 0) {
			FUNC19("request_irq() failed: %d", ret);
			goto disable;
		}

		FUNC6(wl->irq, IRQ_TYPE_EDGE_RISING);

		wl1251_sdio_ops.enable_irq = wl1251_enable_line_irq;
		wl1251_sdio_ops.disable_irq = wl1251_disable_line_irq;

		FUNC22("using dedicated interrupt line");
	} else {
		wl1251_sdio_ops.enable_irq = wl1251_sdio_enable_irq;
		wl1251_sdio_ops.disable_irq = wl1251_sdio_disable_irq;

		FUNC22("using SDIO interrupt");
	}

	ret = FUNC23(wl);
	if (ret)
		goto out_free_irq;

	FUNC17(func, wl);

	/* Tell PM core that we don't need the card to be powered now */
	FUNC10(&func->dev);

	return ret;

out_free_irq:
	if (wl->irq)
		FUNC4(wl->irq, wl);
disable:
	FUNC12(func);
	FUNC13(func);
release:
	FUNC15(func);
	FUNC8(wl_sdio);
out_free_hw:
	FUNC20(wl);
	return ret;
}