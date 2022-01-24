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
struct lantiq_ssc_spi {int /*<<< orphan*/  bits_per_word; struct lantiq_ssc_hwcfg* hwcfg; } ;
struct lantiq_ssc_hwcfg {int irnen_t; int irnen_r; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTQ_SPI_CLC ; 
 int LTQ_SPI_CLC_RMC_S ; 
 int /*<<< orphan*/  LTQ_SPI_CON ; 
 int LTQ_SPI_CON_AEN ; 
 int LTQ_SPI_CON_REN ; 
 int LTQ_SPI_CON_RUEN ; 
 int LTQ_SPI_CON_RXOFF ; 
 int LTQ_SPI_CON_TEN ; 
 int LTQ_SPI_CON_TXOFF ; 
 int /*<<< orphan*/  LTQ_SPI_FPGO ; 
 int /*<<< orphan*/  LTQ_SPI_GPOCON ; 
 int /*<<< orphan*/  LTQ_SPI_IRNEN ; 
 int LTQ_SPI_IRNEN_E ; 
 int /*<<< orphan*/  LTQ_SPI_WHBSTATE ; 
 int LTQ_SPI_WHBSTATE_CLR_ERRORS ; 
 int LTQ_SPI_WHBSTATE_SETMS ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int /*<<< orphan*/  FUNC0 (struct lantiq_ssc_spi const*) ; 
 int /*<<< orphan*/  FUNC1 (struct lantiq_ssc_spi const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lantiq_ssc_spi const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lantiq_ssc_spi const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lantiq_ssc_spi const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lantiq_ssc_spi const*) ; 
 int /*<<< orphan*/  FUNC6 (struct lantiq_ssc_spi const*) ; 

__attribute__((used)) static void FUNC7(const struct lantiq_ssc_spi *spi)
{
	const struct lantiq_ssc_hwcfg *hwcfg = spi->hwcfg;

	/*
	 * Set clock divider for run mode to 1 to
	 * run at same frequency as FPI bus
	 */
	FUNC4(spi, 1 << LTQ_SPI_CLC_RMC_S, LTQ_SPI_CLC);

	/* Put controller into config mode */
	FUNC0(spi);

	/* Clear error flags */
	FUNC3(spi, 0, LTQ_SPI_WHBSTATE_CLR_ERRORS, LTQ_SPI_WHBSTATE);

	/* Enable error checking, disable TX/RX */
	FUNC4(spi, LTQ_SPI_CON_RUEN | LTQ_SPI_CON_AEN |
		LTQ_SPI_CON_TEN | LTQ_SPI_CON_REN | LTQ_SPI_CON_TXOFF |
		LTQ_SPI_CON_RXOFF, LTQ_SPI_CON);

	/* Setup default SPI mode */
	FUNC1(spi, spi->bits_per_word);
	FUNC2(spi, SPI_MODE_0);

	/* Enable master mode and clear error flags */
	FUNC4(spi, LTQ_SPI_WHBSTATE_SETMS |
			       LTQ_SPI_WHBSTATE_CLR_ERRORS,
			       LTQ_SPI_WHBSTATE);

	/* Reset GPIO/CS registers */
	FUNC4(spi, 0, LTQ_SPI_GPOCON);
	FUNC4(spi, 0xFF00, LTQ_SPI_FPGO);

	/* Enable and flush FIFOs */
	FUNC5(spi);
	FUNC6(spi);

	/* Enable interrupts */
	FUNC4(spi, hwcfg->irnen_t | hwcfg->irnen_r |
			  LTQ_SPI_IRNEN_E, LTQ_SPI_IRNEN);
}