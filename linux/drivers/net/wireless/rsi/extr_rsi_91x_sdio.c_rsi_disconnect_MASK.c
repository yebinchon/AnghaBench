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
struct sdio_func {int dummy; } ;
struct rsi_hw {TYPE_1__* priv; scalar_t__ rsi_dev; } ;
struct rsi_91x_sdiodev {int write_fail; int /*<<< orphan*/  rx_thread; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* detach ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int coex_mode; int /*<<< orphan*/ * bt_adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RSI_COEX ; 
 int /*<<< orphan*/  ERR_ZONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rsi_hw*) ; 
 TYPE_2__ rsi_bt_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rsi_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct rsi_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_func*) ; 
 struct rsi_hw* FUNC10 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC11 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC12 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct sdio_func *pfunction)
{
	struct rsi_hw *adapter = FUNC10(pfunction);
	struct rsi_91x_sdiodev *dev;

	if (!adapter)
		return;

	dev = (struct rsi_91x_sdiodev *)adapter->rsi_dev;

	FUNC4(&dev->rx_thread);
	FUNC8(pfunction);
	FUNC12(pfunction);
	FUNC11(pfunction);
	FUNC1(10);

	FUNC5(adapter);
	FUNC1(10);

	if (FUNC0(CONFIG_RSI_COEX) && adapter->priv->coex_mode > 1 &&
	    adapter->priv->bt_adapter) {
		rsi_bt_ops.detach(adapter->priv->bt_adapter);
		adapter->priv->bt_adapter = NULL;
	}

	/* Reset Chip */
	FUNC7(adapter);

	/* Resetting to take care of the case, where-in driver is re-loaded */
	FUNC8(pfunction);
	FUNC6(pfunction);
	FUNC9(pfunction);
	FUNC11(pfunction);
	dev->write_fail = 2;
	FUNC2(adapter);
	FUNC3(ERR_ZONE, "##### RSI SDIO device disconnected #####\n");

}