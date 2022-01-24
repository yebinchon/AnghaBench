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
typedef  int /*<<< orphan*/  u32 ;
struct wilc_spi {int nint; } ;
struct wilc {struct wilc_spi* bus_data; int /*<<< orphan*/  dev; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_NUM_INT ; 
 int WILC_INTR2_ENABLE ; 
 int WILC_INTR_ENABLE ; 
 int WILC_PIN_MUX_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct spi_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wilc*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct wilc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wilc *wilc, int nint)
{
	struct spi_device *spi = FUNC2(wilc->dev);
	struct wilc_spi *spi_priv = wilc->bus_data;
	u32 reg;
	int ret, i;

	if (nint > MAX_NUM_INT) {
		FUNC1(&spi->dev, "Too many interrupts (%d)...\n", nint);
		return 0;
	}

	spi_priv->nint = nint;

	/*
	 * interrupt pin mux select
	 */
	ret = FUNC3(wilc, WILC_PIN_MUX_0, &reg);
	if (!ret) {
		FUNC1(&spi->dev, "Failed read reg (%08x)...\n",
			WILC_PIN_MUX_0);
		return 0;
	}
	reg |= FUNC0(8);
	ret = FUNC4(wilc, WILC_PIN_MUX_0, reg);
	if (!ret) {
		FUNC1(&spi->dev, "Failed write reg (%08x)...\n",
			WILC_PIN_MUX_0);
		return 0;
	}

	/*
	 * interrupt enable
	 */
	ret = FUNC3(wilc, WILC_INTR_ENABLE, &reg);
	if (!ret) {
		FUNC1(&spi->dev, "Failed read reg (%08x)...\n",
			WILC_INTR_ENABLE);
		return 0;
	}

	for (i = 0; (i < 5) && (nint > 0); i++, nint--)
		reg |= (FUNC0((27 + i)));

	ret = FUNC4(wilc, WILC_INTR_ENABLE, reg);
	if (!ret) {
		FUNC1(&spi->dev, "Failed write reg (%08x)...\n",
			WILC_INTR_ENABLE);
		return 0;
	}
	if (nint) {
		ret = FUNC3(wilc, WILC_INTR2_ENABLE, &reg);
		if (!ret) {
			FUNC1(&spi->dev, "Failed read reg (%08x)...\n",
				WILC_INTR2_ENABLE);
			return 0;
		}

		for (i = 0; (i < 3) && (nint > 0); i++, nint--)
			reg |= FUNC0(i);

		ret = FUNC3(wilc, WILC_INTR2_ENABLE, &reg);
		if (!ret) {
			FUNC1(&spi->dev, "Failed write reg (%08x)...\n",
				WILC_INTR2_ENABLE);
			return 0;
		}
	}

	return 1;
}