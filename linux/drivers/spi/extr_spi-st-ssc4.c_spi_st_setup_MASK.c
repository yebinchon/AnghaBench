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
typedef  int u32 ;
struct spi_st {int baud; scalar_t__ base; int /*<<< orphan*/  clk; } ;
struct spi_device {int max_speed_hz; int cs_gpio; int mode; int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LOOP ; 
 int SPI_LSB_FIRST ; 
 scalar_t__ SSC_BRG ; 
 scalar_t__ SSC_CTL ; 
 int SSC_CTL_DATA_WIDTH_MSK ; 
 int SSC_CTL_EN ; 
 int SSC_CTL_EN_RX_FIFO ; 
 int SSC_CTL_EN_TX_FIFO ; 
 int SSC_CTL_HB ; 
 int SSC_CTL_LPB ; 
 int SSC_CTL_MS ; 
 int SSC_CTL_PH ; 
 int SSC_CTL_PO ; 
 scalar_t__ SSC_RBUF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 struct spi_st* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct spi_st *spi_st = FUNC10(spi->master);
	u32 spi_st_clk, sscbrg, var;
	u32 hz = spi->max_speed_hz;
	int cs = spi->cs_gpio;
	int ret;

	if (!hz)  {
		FUNC3(&spi->dev, "max_speed_hz unspecified\n");
		return -EINVAL;
	}

	if (!FUNC7(cs)) {
		FUNC3(&spi->dev, "%d is not a valid gpio\n", cs);
		return -EINVAL;
	}

	ret = FUNC8(cs, FUNC4(&spi->dev));
	if (ret) {
		FUNC3(&spi->dev, "could not request gpio:%d\n", cs);
		return ret;
	}

	ret = FUNC5(cs, spi->mode & SPI_CS_HIGH);
	if (ret)
		goto out_free_gpio;

	spi_st_clk = FUNC1(spi_st->clk);

	/* Set SSC_BRF */
	sscbrg = spi_st_clk / (2 * hz);
	if (sscbrg < 0x07 || sscbrg > FUNC0(16)) {
		FUNC3(&spi->dev,
			"baudrate %d outside valid range %d\n", sscbrg, hz);
		ret = -EINVAL;
		goto out_free_gpio;
	}

	spi_st->baud = spi_st_clk / (2 * sscbrg);
	if (sscbrg == FUNC0(16)) /* 16-bit counter wraps */
		sscbrg = 0x0;

	FUNC11(sscbrg, spi_st->base + SSC_BRG);

	FUNC2(&spi->dev,
		"setting baudrate:target= %u hz, actual= %u hz, sscbrg= %u\n",
		hz, spi_st->baud, sscbrg);

	/* Set SSC_CTL and enable SSC */
	var = FUNC9(spi_st->base + SSC_CTL);
	var |= SSC_CTL_MS;

	if (spi->mode & SPI_CPOL)
		var |= SSC_CTL_PO;
	else
		var &= ~SSC_CTL_PO;

	if (spi->mode & SPI_CPHA)
		var |= SSC_CTL_PH;
	else
		var &= ~SSC_CTL_PH;

	if ((spi->mode & SPI_LSB_FIRST) == 0)
		var |= SSC_CTL_HB;
	else
		var &= ~SSC_CTL_HB;

	if (spi->mode & SPI_LOOP)
		var |= SSC_CTL_LPB;
	else
		var &= ~SSC_CTL_LPB;

	var &= ~SSC_CTL_DATA_WIDTH_MSK;
	var |= (spi->bits_per_word - 1);

	var |= SSC_CTL_EN_TX_FIFO | SSC_CTL_EN_RX_FIFO;
	var |= SSC_CTL_EN;

	FUNC11(var, spi_st->base + SSC_CTL);

	/* Clear the status register */
	FUNC9(spi_st->base + SSC_RBUF);

	return 0;

out_free_gpio:
	FUNC6(cs);
	return ret;
}