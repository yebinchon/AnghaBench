#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * tx_buf; int /*<<< orphan*/ * rx_buf; } ;
struct olpc_xo175_ec {int /*<<< orphan*/  tx_buf; TYPE_2__ xfer; int /*<<< orphan*/  rx_buf; TYPE_3__* pwrbtn; scalar_t__ logbuf_len; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  cmd_state; int /*<<< orphan*/  cmd_state_lock; struct spi_device* spi; int /*<<< orphan*/  gpio_cmd; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_8__ {char* name; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STATE_IDLE ; 
 int EBUSY ; 
 int /*<<< orphan*/  EC_ALL_EVENTS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 struct olpc_xo175_ec* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ olpc_ec ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct olpc_xo175_ec*) ; 
 int /*<<< orphan*/  olpc_xo175_ec_driver ; 
 int /*<<< orphan*/ * olpc_xo175_ec_power_off ; 
 int /*<<< orphan*/  FUNC11 (struct olpc_xo175_ec*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pm_power_off ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*,struct olpc_xo175_ec*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct spi_device *spi)
{
	struct olpc_xo175_ec *priv;
	int ret;

	if (olpc_ec) {
		FUNC2(&spi->dev, "OLPC EC already registered.\n");
		return -EBUSY;
	}

	priv = FUNC6(&spi->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->gpio_cmd = FUNC4(&spi->dev, "cmd", GPIOD_OUT_LOW);
	if (FUNC0(priv->gpio_cmd)) {
		FUNC2(&spi->dev, "failed to get cmd gpio: %ld\n",
					FUNC1(priv->gpio_cmd));
		return FUNC1(priv->gpio_cmd);
	}

	priv->spi = spi;

	FUNC15(&priv->cmd_state_lock);
	priv->cmd_state = CMD_STATE_IDLE;
	FUNC7(&priv->cmd_done);

	priv->logbuf_len = 0;

	/* Set up power button input device */
	priv->pwrbtn = FUNC5(&spi->dev);
	if (!priv->pwrbtn)
		return -ENOMEM;
	priv->pwrbtn->name = "Power Button";
	priv->pwrbtn->dev.parent = &spi->dev;
	FUNC9(priv->pwrbtn, EV_KEY, KEY_POWER);
	ret = FUNC8(priv->pwrbtn);
	if (ret) {
		FUNC2(&spi->dev, "error registering input device: %d\n", ret);
		return ret;
	}

	FUNC14(spi, priv);

	priv->xfer.rx_buf = &priv->rx_buf;
	priv->xfer.tx_buf = &priv->tx_buf;

	FUNC11(priv);

	FUNC10(&olpc_xo175_ec_driver, priv);
	olpc_ec = FUNC13(&spi->dev, "olpc-ec", -1,
							NULL, 0, NULL, 0);

	/* Enable all EC events while we're awake */
	FUNC12(EC_ALL_EVENTS);

	if (pm_power_off == NULL)
		pm_power_off = olpc_xo175_ec_power_off;

	FUNC3(&spi->dev, "OLPC XO-1.75 Embedded Controller driver\n");

	return 0;
}