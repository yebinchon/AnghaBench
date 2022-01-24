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
struct TYPE_2__ {int len; int /*<<< orphan*/  tx_buf; } ;
struct spi_slave_time_priv {TYPE_1__ xfer; int /*<<< orphan*/  buf; int /*<<< orphan*/  finished; struct spi_device* spi; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct spi_slave_time_priv* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,struct spi_slave_time_priv*) ; 
 int FUNC3 (struct spi_slave_time_priv*) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct spi_slave_time_priv *priv;
	int ret;

	priv = FUNC0(&spi->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->spi = spi;
	FUNC1(&priv->finished);
	priv->xfer.tx_buf = priv->buf;
	priv->xfer.len = sizeof(priv->buf);

	ret = FUNC3(priv);
	if (ret)
		return ret;

	FUNC2(spi, priv);
	return 0;
}