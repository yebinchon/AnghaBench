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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct l4f00242t03_priv {int /*<<< orphan*/  io_reg; int /*<<< orphan*/  core_reg; } ;
struct l4f00242t03_pdata {int /*<<< orphan*/  data_enable_gpio; int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct l4f00242t03_pdata* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 struct l4f00242t03_priv* FUNC11 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_device*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC13(struct spi_device *spi)
{
	struct l4f00242t03_pdata *pdata = FUNC3(&spi->dev);
	struct l4f00242t03_priv *priv = FUNC11(spi);
	const u16 cmd[] = { 0x36, FUNC7(0), 0x3A, FUNC7(0x60) };
	int ret;

	FUNC1(&spi->dev, "initializing LCD\n");

	ret = FUNC10(priv->io_reg, 1800000, 1800000);
	if (ret) {
		FUNC2(&spi->dev, "failed to set the IO regulator voltage.\n");
		return;
	}
	ret = FUNC9(priv->io_reg);
	if (ret) {
		FUNC2(&spi->dev, "failed to enable the IO regulator.\n");
		return;
	}

	ret = FUNC10(priv->core_reg, 2800000, 2800000);
	if (ret) {
		FUNC2(&spi->dev, "failed to set the core regulator voltage.\n");
		FUNC8(priv->io_reg);
		return;
	}
	ret = FUNC9(priv->core_reg);
	if (ret) {
		FUNC2(&spi->dev, "failed to enable the core regulator.\n");
		FUNC8(priv->io_reg);
		return;
	}

	FUNC5(pdata->reset_gpio);

	FUNC4(pdata->data_enable_gpio, 1);
	FUNC6(60);
	FUNC12(spi, (const u8 *)cmd, FUNC0(cmd) * sizeof(u16));
}