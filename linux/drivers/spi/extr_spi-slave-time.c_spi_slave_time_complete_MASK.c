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
struct TYPE_3__ {int status; } ;
struct spi_slave_time_priv {int /*<<< orphan*/  finished; TYPE_2__* spi; TYPE_1__ msg; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct spi_slave_time_priv*) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
	struct spi_slave_time_priv *priv = arg;
	int ret;

	ret = priv->msg.status;
	if (ret)
		goto terminate;

	ret = FUNC2(priv);
	if (ret)
		goto terminate;

	return;

terminate:
	FUNC1(&priv->spi->dev, "Terminating\n");
	FUNC0(&priv->finished);
}