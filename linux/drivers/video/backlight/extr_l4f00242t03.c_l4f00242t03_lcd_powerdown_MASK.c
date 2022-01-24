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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct l4f00242t03_priv {int /*<<< orphan*/  core_reg; int /*<<< orphan*/  io_reg; } ;
struct l4f00242t03_pdata {int /*<<< orphan*/  data_enable_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct l4f00242t03_pdata* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct l4f00242t03_priv* FUNC4 (struct spi_device*) ; 

__attribute__((used)) static void FUNC5(struct spi_device *spi)
{
	struct l4f00242t03_pdata *pdata = FUNC1(&spi->dev);
	struct l4f00242t03_priv *priv = FUNC4(spi);

	FUNC0(&spi->dev, "Powering down LCD\n");

	FUNC2(pdata->data_enable_gpio, 0);

	FUNC3(priv->io_reg);
	FUNC3(priv->core_reg);
}