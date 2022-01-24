#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; scalar_t__ irq; } ;
struct ds1343_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  irqen; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_AF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,struct ds1343_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ds1343_priv* FUNC6 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	struct ds1343_priv *priv = FUNC6(spi);

	if (spi->irq) {
		FUNC4(&priv->mutex);
		priv->irqen &= ~RTC_AF;
		FUNC5(&priv->mutex);

		FUNC0(&spi->dev);
		FUNC1(&spi->dev, false);
		FUNC2(&spi->dev, spi->irq, priv);
	}

	FUNC7(spi, NULL);

	FUNC3(&spi->dev);

	return 0;
}