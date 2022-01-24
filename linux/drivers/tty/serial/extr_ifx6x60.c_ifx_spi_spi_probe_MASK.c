#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct spi_device {int mode; int bits_per_word; TYPE_2__ dev; int /*<<< orphan*/  max_speed_hz; } ;
struct TYPE_8__ {int reset; int po; int mrdy; int srdy; int reset_out; } ;
struct ifx_spi_device {TYPE_1__ gpio; int /*<<< orphan*/  flags; int /*<<< orphan*/  io_work_tasklet; int /*<<< orphan*/  mdm_reset_wait; void* rx_buffer; int /*<<< orphan*/  rx_bus; struct spi_device* spi_dev; void* tx_buffer; int /*<<< orphan*/  tx_bus; scalar_t__ spi_slave_cts; scalar_t__ spi_more; int /*<<< orphan*/  swap_buf; int /*<<< orphan*/  max_hz; int /*<<< orphan*/  use_dma; int /*<<< orphan*/  modem; int /*<<< orphan*/  spi_timer; scalar_t__ power_status; int /*<<< orphan*/  power_lock; int /*<<< orphan*/  write_lock; } ;
struct ifx_modem_platform_data {int rst_pmu; int pwr_on; int mrdy; int srdy; int rst_out; int /*<<< orphan*/  max_hz; int /*<<< orphan*/  use_dma; int /*<<< orphan*/  modem_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRVNAME ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFX_SPI_MODE ; 
 int /*<<< orphan*/  IFX_SPI_STATE_IO_IN_PROGRESS ; 
 int /*<<< orphan*/  IFX_SPI_STATE_PRESENT ; 
 int /*<<< orphan*/  IFX_SPI_TRANSFER_SIZE ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int SPI_LOOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 struct ifx_modem_platform_data* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int,int,int,int,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct ifx_spi_device*) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int,char*) ; 
 int FUNC13 (int) ; 
 int FUNC14 (struct ifx_spi_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct ifx_spi_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct ifx_spi_device*) ; 
 int /*<<< orphan*/  ifx_spi_io ; 
 int FUNC17 (struct ifx_spi_device*) ; 
 int /*<<< orphan*/  ifx_spi_reset_interrupt ; 
 int /*<<< orphan*/  ifx_spi_srdy_interrupt ; 
 int /*<<< orphan*/  ifx_spi_timeout ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct ifx_spi_device*) ; 
 struct ifx_spi_device* FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ifx_spi_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct ifx_spi_device*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int FUNC25 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ifx_spi_device*) ; 
 struct ifx_spi_device* saved_ifx_dev ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int spi_bpw ; 
 int /*<<< orphan*/  FUNC27 (struct spi_device*,struct ifx_spi_device*) ; 
 int FUNC28 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swap_buf_16 ; 
 int /*<<< orphan*/  swap_buf_32 ; 
 int /*<<< orphan*/  swap_buf_8 ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(struct spi_device *spi)
{
	int ret;
	int srdy;
	struct ifx_modem_platform_data *pl_data;
	struct ifx_spi_device *ifx_dev;

	if (saved_ifx_dev) {
		FUNC1(&spi->dev, "ignoring subsequent detection");
		return -ENODEV;
	}

	pl_data = FUNC3(&spi->dev);
	if (!pl_data) {
		FUNC2(&spi->dev, "missing platform data!");
		return -ENODEV;
	}

	/* initialize structure to hold our device variables */
	ifx_dev = FUNC20(sizeof(struct ifx_spi_device), GFP_KERNEL);
	if (!ifx_dev) {
		FUNC2(&spi->dev, "spi device allocation failed");
		return -ENOMEM;
	}
	saved_ifx_dev = ifx_dev;
	ifx_dev->spi_dev = spi;
	FUNC0(IFX_SPI_STATE_IO_IN_PROGRESS, &ifx_dev->flags);
	FUNC29(&ifx_dev->write_lock);
	FUNC29(&ifx_dev->power_lock);
	ifx_dev->power_status = 0;
	FUNC31(&ifx_dev->spi_timer, ifx_spi_timeout, 0);
	ifx_dev->modem = pl_data->modem_type;
	ifx_dev->use_dma = pl_data->use_dma;
	ifx_dev->max_hz = pl_data->max_hz;
	/* initialize spi mode, etc */
	spi->max_speed_hz = ifx_dev->max_hz;
	spi->mode = IFX_SPI_MODE | (SPI_LOOP & spi->mode);
	spi->bits_per_word = spi_bpw;
	ret = FUNC28(spi);
	if (ret) {
		FUNC2(&spi->dev, "SPI setup wasn't successful %d", ret);
		FUNC19(ifx_dev);
		return -ENODEV;
	}

	/* init swap_buf function according to word width configuration */
	if (spi->bits_per_word == 32)
		ifx_dev->swap_buf = swap_buf_32;
	else if (spi->bits_per_word == 16)
		ifx_dev->swap_buf = swap_buf_16;
	else
		ifx_dev->swap_buf = swap_buf_8;

	/* ensure SPI protocol flags are initialized to enable transfer */
	ifx_dev->spi_more = 0;
	ifx_dev->spi_slave_cts = 0;

	/*initialize transfer and dma buffers */
	ifx_dev->tx_buffer = FUNC5(ifx_dev->spi_dev->dev.parent,
				IFX_SPI_TRANSFER_SIZE,
				&ifx_dev->tx_bus,
				GFP_KERNEL);
	if (!ifx_dev->tx_buffer) {
		FUNC2(&spi->dev, "DMA-TX buffer allocation failed");
		ret = -ENOMEM;
		goto error_ret;
	}
	ifx_dev->rx_buffer = FUNC5(ifx_dev->spi_dev->dev.parent,
				IFX_SPI_TRANSFER_SIZE,
				&ifx_dev->rx_bus,
				GFP_KERNEL);
	if (!ifx_dev->rx_buffer) {
		FUNC2(&spi->dev, "DMA-RX buffer allocation failed");
		ret = -ENOMEM;
		goto error_ret;
	}

	/* initialize waitq for modem reset */
	FUNC18(&ifx_dev->mdm_reset_wait);

	FUNC27(spi, ifx_dev);
	FUNC30(&ifx_dev->io_work_tasklet, ifx_spi_io,
						(unsigned long)ifx_dev);

	FUNC26(IFX_SPI_STATE_PRESENT, &ifx_dev->flags);

	/* create our tty port */
	ret = FUNC14(ifx_dev);
	if (ret != 0) {
		FUNC2(&spi->dev, "create default tty port failed");
		goto error_ret;
	}

	ifx_dev->gpio.reset = pl_data->rst_pmu;
	ifx_dev->gpio.po = pl_data->pwr_on;
	ifx_dev->gpio.mrdy = pl_data->mrdy;
	ifx_dev->gpio.srdy = pl_data->srdy;
	ifx_dev->gpio.reset_out = pl_data->rst_out;

	FUNC4(&spi->dev, "gpios %d, %d, %d, %d, %d",
		 ifx_dev->gpio.reset, ifx_dev->gpio.po, ifx_dev->gpio.mrdy,
		 ifx_dev->gpio.srdy, ifx_dev->gpio.reset_out);

	/* Configure gpios */
	ret = FUNC12(ifx_dev->gpio.reset, "ifxModem");
	if (ret < 0) {
		FUNC2(&spi->dev, "Unable to allocate GPIO%d (RESET)",
			ifx_dev->gpio.reset);
		goto error_ret;
	}
	ret += FUNC8(ifx_dev->gpio.reset, 0);
	ret += FUNC9(ifx_dev->gpio.reset, 1);
	if (ret) {
		FUNC2(&spi->dev, "Unable to configure GPIO%d (RESET)",
			ifx_dev->gpio.reset);
		ret = -EBUSY;
		goto error_ret2;
	}

	ret = FUNC12(ifx_dev->gpio.po, "ifxModem");
	ret += FUNC8(ifx_dev->gpio.po, 0);
	ret += FUNC9(ifx_dev->gpio.po, 1);
	if (ret) {
		FUNC2(&spi->dev, "Unable to configure GPIO%d (ON)",
			ifx_dev->gpio.po);
		ret = -EBUSY;
		goto error_ret3;
	}

	ret = FUNC12(ifx_dev->gpio.mrdy, "ifxModem");
	if (ret < 0) {
		FUNC2(&spi->dev, "Unable to allocate GPIO%d (MRDY)",
			ifx_dev->gpio.mrdy);
		goto error_ret3;
	}
	ret += FUNC9(ifx_dev->gpio.mrdy, 1);
	ret += FUNC8(ifx_dev->gpio.mrdy, 0);
	if (ret) {
		FUNC2(&spi->dev, "Unable to configure GPIO%d (MRDY)",
			ifx_dev->gpio.mrdy);
		ret = -EBUSY;
		goto error_ret4;
	}

	ret = FUNC12(ifx_dev->gpio.srdy, "ifxModem");
	if (ret < 0) {
		FUNC2(&spi->dev, "Unable to allocate GPIO%d (SRDY)",
			ifx_dev->gpio.srdy);
		ret = -EBUSY;
		goto error_ret4;
	}
	ret += FUNC9(ifx_dev->gpio.srdy, 1);
	ret += FUNC7(ifx_dev->gpio.srdy);
	if (ret) {
		FUNC2(&spi->dev, "Unable to configure GPIO%d (SRDY)",
			ifx_dev->gpio.srdy);
		ret = -EBUSY;
		goto error_ret5;
	}

	ret = FUNC12(ifx_dev->gpio.reset_out, "ifxModem");
	if (ret < 0) {
		FUNC2(&spi->dev, "Unable to allocate GPIO%d (RESET_OUT)",
			ifx_dev->gpio.reset_out);
		goto error_ret5;
	}
	ret += FUNC9(ifx_dev->gpio.reset_out, 1);
	ret += FUNC7(ifx_dev->gpio.reset_out);
	if (ret) {
		FUNC2(&spi->dev, "Unable to configure GPIO%d (RESET_OUT)",
			ifx_dev->gpio.reset_out);
		ret = -EBUSY;
		goto error_ret6;
	}

	ret = FUNC25(FUNC13(ifx_dev->gpio.reset_out),
			  ifx_spi_reset_interrupt,
			  IRQF_TRIGGER_RISING|IRQF_TRIGGER_FALLING, DRVNAME,
			  ifx_dev);
	if (ret) {
		FUNC2(&spi->dev, "Unable to get irq %x\n",
			FUNC13(ifx_dev->gpio.reset_out));
		goto error_ret6;
	}

	ret = FUNC17(ifx_dev);

	ret = FUNC25(FUNC13(ifx_dev->gpio.srdy),
			  ifx_spi_srdy_interrupt, IRQF_TRIGGER_RISING, DRVNAME,
			  ifx_dev);
	if (ret) {
		FUNC2(&spi->dev, "Unable to get irq %x",
			FUNC13(ifx_dev->gpio.srdy));
		goto error_ret7;
	}

	/* set pm runtime power state and register with power system */
	FUNC24(&spi->dev);
	FUNC23(&spi->dev);

	/* handle case that modem is already signaling SRDY */
	/* no outgoing tty open at this point, this just satisfies the
	 * modem's read and should reset communication properly
	 */
	srdy = FUNC11(ifx_dev->gpio.srdy);

	if (srdy) {
		FUNC21(ifx_dev);
		FUNC16(ifx_dev);
	} else
		FUNC22(ifx_dev);
	return 0;

error_ret7:
	FUNC6(FUNC13(ifx_dev->gpio.reset_out), ifx_dev);
error_ret6:
	FUNC10(ifx_dev->gpio.srdy);
error_ret5:
	FUNC10(ifx_dev->gpio.mrdy);
error_ret4:
	FUNC10(ifx_dev->gpio.reset);
error_ret3:
	FUNC10(ifx_dev->gpio.po);
error_ret2:
	FUNC10(ifx_dev->gpio.reset_out);
error_ret:
	FUNC15(ifx_dev);
	saved_ifx_dev = NULL;
	return ret;
}