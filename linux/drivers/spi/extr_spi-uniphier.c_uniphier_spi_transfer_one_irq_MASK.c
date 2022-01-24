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
struct uniphier_spi_priv {int error; int /*<<< orphan*/  xfer_done; } ;
struct spi_transfer {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct spi_master {TYPE_1__ dev; } ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int SSI_IE_RCIE ; 
 int SSI_IE_RORIE ; 
 int /*<<< orphan*/  SSI_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct uniphier_spi_priv* FUNC3 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC4 (struct uniphier_spi_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*,int) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct spi_master *master,
					 struct spi_device *spi,
					 struct spi_transfer *t)
{
	struct uniphier_spi_priv *priv = FUNC3(master);
	struct device *dev = master->dev.parent;
	unsigned long time_left;

	FUNC2(&priv->xfer_done);

	FUNC4(priv);

	FUNC6(spi, SSI_IE_RCIE | SSI_IE_RORIE);

	time_left = FUNC7(&priv->xfer_done,
					FUNC1(SSI_TIMEOUT_MS));

	FUNC5(spi, SSI_IE_RCIE | SSI_IE_RORIE);

	if (!time_left) {
		FUNC0(dev, "transfer timeout.\n");
		return -ETIMEDOUT;
	}

	return priv->error;
}