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
typedef  int u16 ;
struct TYPE_3__ {scalar_t__ status; } ;
struct spi_slave_system_control_priv {int /*<<< orphan*/  finished; TYPE_2__* spi; int /*<<< orphan*/  cmd; TYPE_1__ msg; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  CMD_HALT 131 
#define  CMD_POWEROFF 130 
#define  CMD_REBOOT 129 
#define  CMD_SUSPEND 128 
 int /*<<< orphan*/  PM_SUSPEND_MEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct spi_slave_system_control_priv*) ; 

__attribute__((used)) static void FUNC9(void *arg)
{
	struct spi_slave_system_control_priv *priv = arg;
	u16 cmd;
	int ret;

	if (priv->msg.status)
		goto terminate;

	cmd = FUNC0(priv->cmd);
	switch (cmd) {
	case CMD_REBOOT:
		FUNC2(&priv->spi->dev, "Rebooting system...\n");
		FUNC6(NULL);
		break;

	case CMD_POWEROFF:
		FUNC2(&priv->spi->dev, "Powering off system...\n");
		FUNC5();
		break;

	case CMD_HALT:
		FUNC2(&priv->spi->dev, "Halting system...\n");
		FUNC4();
		break;

	case CMD_SUSPEND:
		FUNC2(&priv->spi->dev, "Suspending system...\n");
		FUNC7(PM_SUSPEND_MEM);
		break;

	default:
		FUNC3(&priv->spi->dev, "Unknown command 0x%x\n", cmd);
		break;
	}

	ret = FUNC8(priv);
	if (ret)
		goto terminate;

	return;

terminate:
	FUNC2(&priv->spi->dev, "Terminating\n");
	FUNC1(&priv->finished);
}