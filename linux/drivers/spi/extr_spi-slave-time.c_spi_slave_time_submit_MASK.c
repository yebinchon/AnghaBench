#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_4__ {struct spi_slave_time_priv* context; int /*<<< orphan*/  complete; } ;
struct spi_slave_time_priv {TYPE_2__* spi; TYPE_1__ msg; int /*<<< orphan*/  xfer; void** buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 () ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  spi_slave_time_complete ; 

__attribute__((used)) static int FUNC6(struct spi_slave_time_priv *priv)
{
	u32 rem_us;
	int ret;
	u64 ts;

	ts = FUNC3();
	rem_us = FUNC2(ts, 1000000000) / 1000;

	priv->buf[0] = FUNC0(ts);
	priv->buf[1] = FUNC0(rem_us);

	FUNC5(&priv->msg, &priv->xfer, 1);

	priv->msg.complete = spi_slave_time_complete;
	priv->msg.context = priv;

	ret = FUNC4(priv->spi, &priv->msg);
	if (ret)
		FUNC1(&priv->spi->dev, "spi_async() failed %d\n", ret);

	return ret;
}