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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {int mode; int /*<<< orphan*/  max_speed_hz; TYPE_2__ dev; int /*<<< orphan*/  controller; } ;
struct fsl_dspi_platform_data {int /*<<< orphan*/  sck_cs_delay; int /*<<< orphan*/  cs_sck_delay; } ;
struct fsl_dspi {int /*<<< orphan*/  ctlr; int /*<<< orphan*/  clk; TYPE_1__* pdev; } ;
struct chip_data {int ctar_val; scalar_t__ void_write_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int FUNC0 (unsigned char) ; 
 int FUNC1 (unsigned char) ; 
 int SPI_CTAR_CPHA ; 
 int SPI_CTAR_CPOL ; 
 int FUNC2 (unsigned char) ; 
 int SPI_CTAR_LSBFE ; 
 int FUNC3 (unsigned char) ; 
 int FUNC4 (unsigned char) ; 
 int FUNC5 (unsigned char) ; 
 int SPI_LSB_FIRST ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 struct fsl_dspi_platform_data* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int /*<<< orphan*/ ,unsigned long) ; 
 struct chip_data* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct fsl_dspi* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct chip_data* FUNC14 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_device*,struct chip_data*) ; 

__attribute__((used)) static int FUNC16(struct spi_device *spi)
{
	struct fsl_dspi *dspi = FUNC12(spi->controller);
	unsigned char br = 0, pbr = 0, pcssck = 0, cssck = 0;
	u32 cs_sck_delay = 0, sck_cs_delay = 0;
	struct fsl_dspi_platform_data *pdata;
	unsigned char pasc = 0, asc = 0;
	struct chip_data *chip;
	unsigned long clkrate;

	/* Only alloc on first setup */
	chip = FUNC14(spi);
	if (chip == NULL) {
		chip = FUNC9(sizeof(struct chip_data), GFP_KERNEL);
		if (!chip)
			return -ENOMEM;
	}

	pdata = FUNC7(&dspi->pdev->dev);

	if (!pdata) {
		FUNC11(spi->dev.of_node, "fsl,spi-cs-sck-delay",
				     &cs_sck_delay);

		FUNC11(spi->dev.of_node, "fsl,spi-sck-cs-delay",
				     &sck_cs_delay);
	} else {
		cs_sck_delay = pdata->cs_sck_delay;
		sck_cs_delay = pdata->sck_cs_delay;
	}

	chip->void_write_data = 0;

	clkrate = FUNC6(dspi->clk);
	FUNC8(&pbr, &br, spi->max_speed_hz, clkrate);

	/* Set PCS to SCK delay scale values */
	FUNC10(&pcssck, &cssck, cs_sck_delay, clkrate);

	/* Set After SCK delay scale values */
	FUNC10(&pasc, &asc, sck_cs_delay, clkrate);

	chip->ctar_val = 0;
	if (spi->mode & SPI_CPOL)
		chip->ctar_val |= SPI_CTAR_CPOL;
	if (spi->mode & SPI_CPHA)
		chip->ctar_val |= SPI_CTAR_CPHA;

	if (!FUNC13(dspi->ctlr)) {
		chip->ctar_val |= FUNC5(pcssck) |
				  FUNC2(cssck) |
				  FUNC3(pasc) |
				  FUNC0(asc) |
				  FUNC4(pbr) |
				  FUNC1(br);

		if (spi->mode & SPI_LSB_FIRST)
			chip->ctar_val |= SPI_CTAR_LSBFE;
	}

	FUNC15(spi, chip);

	return 0;
}