#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct xspi_platform_data {int num_chipselect; int bits_per_word; scalar_t__ num_devices; scalar_t__ devices; } ;
struct TYPE_11__ {int /*<<< orphan*/  txrx_bufs; int /*<<< orphan*/  setup_transfer; int /*<<< orphan*/  chipselect; struct spi_master* master; } ;
struct xilinx_spi {int cs_inactive; int bytes_per_word; int irq; scalar_t__ regs; TYPE_2__ bitbang; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  (* write_fn ) (int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  (* read_fn ) (scalar_t__) ;int /*<<< orphan*/  done; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int mode_bits; int num_chipselect; int /*<<< orphan*/  bits_per_word_mask; TYPE_1__ dev; int /*<<< orphan*/  bus_num; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LOOP ; 
 int SPI_LSB_FIRST ; 
 int XILINX_SPI_MAX_CS ; 
 int /*<<< orphan*/  XSPI_CR_LOOP ; 
 scalar_t__ XSPI_CR_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 struct xspi_platform_data* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,unsigned long long,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,struct resource*) ; 
 int FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xilinx_spi*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct spi_master*) ; 
 struct spi_master* FUNC14 (TYPE_3__*,int) ; 
 int FUNC15 (TYPE_2__*) ; 
 struct xilinx_spi* FUNC16 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC17 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC18 (struct spi_master*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  xilinx_spi_chipselect ; 
 int /*<<< orphan*/  FUNC21 (struct xilinx_spi*) ; 
 int /*<<< orphan*/  xilinx_spi_irq ; 
 int /*<<< orphan*/  xilinx_spi_setup_transfer ; 
 int /*<<< orphan*/  xilinx_spi_txrx_bufs ; 
 int /*<<< orphan*/  FUNC22 (struct xilinx_spi*) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct xilinx_spi *xspi;
	struct xspi_platform_data *pdata;
	struct resource *res;
	int ret, num_cs = 0, bits_per_word = 8;
	struct spi_master *master;
	u32 tmp;
	u8 i;

	pdata = FUNC4(&pdev->dev);
	if (pdata) {
		num_cs = pdata->num_chipselect;
		bits_per_word = pdata->bits_per_word;
	} else {
		FUNC10(pdev->dev.of_node, "xlnx,num-ss-bits",
					  &num_cs);
	}

	if (!num_cs) {
		FUNC3(&pdev->dev,
			"Missing slave select configuration data\n");
		return -EINVAL;
	}

	if (num_cs > XILINX_SPI_MAX_CS) {
		FUNC3(&pdev->dev, "Invalid number of spi slaves\n");
		return -EINVAL;
	}

	master = FUNC14(&pdev->dev, sizeof(struct xilinx_spi));
	if (!master)
		return -ENODEV;

	/* the spi->mode bits understood by this driver: */
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LSB_FIRST | SPI_LOOP |
			    SPI_CS_HIGH;

	xspi = FUNC16(master);
	xspi->cs_inactive = 0xffffffff;
	xspi->bitbang.master = master;
	xspi->bitbang.chipselect = xilinx_spi_chipselect;
	xspi->bitbang.setup_transfer = xilinx_spi_setup_transfer;
	xspi->bitbang.txrx_bufs = xilinx_spi_txrx_bufs;
	FUNC9(&xspi->done);

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	xspi->regs = FUNC7(&pdev->dev, res);
	if (FUNC0(xspi->regs)) {
		ret = FUNC1(xspi->regs);
		goto put_master;
	}

	master->bus_num = pdev->id;
	master->num_chipselect = num_cs;
	master->dev.of_node = pdev->dev.of_node;

	/*
	 * Detect endianess on the IP via loop bit in CR. Detection
	 * must be done before reset is sent because incorrect reset
	 * value generates error interrupt.
	 * Setup little endian helper functions first and try to use them
	 * and check if bit was correctly setup or not.
	 */
	xspi->read_fn = xspi_read32;
	xspi->write_fn = xspi_write32;

	xspi->write_fn(XSPI_CR_LOOP, xspi->regs + XSPI_CR_OFFSET);
	tmp = xspi->read_fn(xspi->regs + XSPI_CR_OFFSET);
	tmp &= XSPI_CR_LOOP;
	if (tmp != XSPI_CR_LOOP) {
		xspi->read_fn = xspi_read32_be;
		xspi->write_fn = xspi_write32_be;
	}

	master->bits_per_word_mask = FUNC2(bits_per_word);
	xspi->bytes_per_word = bits_per_word / 8;
	xspi->buffer_size = FUNC21(xspi);

	xspi->irq = FUNC11(pdev, 0);
	if (xspi->irq < 0 && xspi->irq != -ENXIO) {
		ret = xspi->irq;
		goto put_master;
	} else if (xspi->irq >= 0) {
		/* Register for SPI Interrupt */
		ret = FUNC8(&pdev->dev, xspi->irq, xilinx_spi_irq, 0,
				FUNC6(&pdev->dev), xspi);
		if (ret)
			goto put_master;
	}

	/* SPI controller initializations */
	FUNC22(xspi);

	ret = FUNC15(&xspi->bitbang);
	if (ret) {
		FUNC3(&pdev->dev, "spi_bitbang_start FAILED\n");
		goto put_master;
	}

	FUNC5(&pdev->dev, "at 0x%08llX mapped to 0x%p, irq=%d\n",
		(unsigned long long)res->start, xspi->regs, xspi->irq);

	if (pdata) {
		for (i = 0; i < pdata->num_devices; i++)
			FUNC18(master, pdata->devices + i);
	}

	FUNC13(pdev, master);
	return 0;

put_master:
	FUNC17(master);

	return ret;
}