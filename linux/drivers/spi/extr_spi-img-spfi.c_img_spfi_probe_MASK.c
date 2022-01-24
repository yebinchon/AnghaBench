#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int auto_runtime_pm; int mode_bits; int bits_per_word_mask; int max_speed_hz; int min_speed_hz; int /*<<< orphan*/  can_dma; void* dma_rx; void* dma_tx; int /*<<< orphan*/  handle_err; int /*<<< orphan*/  unprepare_message; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; TYPE_1__ dev; int /*<<< orphan*/  bus_num; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  id; } ;
struct img_spfi {int irq; void* sys_clk; void* spfi_clk; void* tx_ch; void* rx_ch; TYPE_2__* dev; int /*<<< orphan*/  phys; void* regs; int /*<<< orphan*/  lock; struct spi_master* master; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQ_TYPE_LEVEL_HIGH ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  SPFI_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  SPFI_INTERRUPT_IACCESS ; 
 int FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 void* FUNC8 (TYPE_2__*,char*) ; 
 void* FUNC9 (TYPE_2__*,struct resource*) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct img_spfi*) ; 
 int FUNC11 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 void* FUNC13 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  img_spfi_can_dma ; 
 int /*<<< orphan*/  img_spfi_cleanup ; 
 int /*<<< orphan*/  img_spfi_handle_err ; 
 int /*<<< orphan*/  img_spfi_irq ; 
 int /*<<< orphan*/  img_spfi_prepare ; 
 int /*<<< orphan*/  img_spfi_setup ; 
 int /*<<< orphan*/  img_spfi_transfer_one ; 
 int /*<<< orphan*/  img_spfi_unprepare ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (struct img_spfi*) ; 
 int /*<<< orphan*/  FUNC23 (struct img_spfi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC24 (TYPE_2__*,int) ; 
 struct img_spfi* FUNC25 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC26 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct spi_master *master;
	struct img_spfi *spfi;
	struct resource *res;
	int ret;
	u32 max_speed_hz;

	master = FUNC24(&pdev->dev, sizeof(*spfi));
	if (!master)
		return -ENOMEM;
	FUNC18(pdev, master);

	spfi = FUNC25(master);
	spfi->dev = &pdev->dev;
	spfi->master = master;
	FUNC27(&spfi->lock);

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	spfi->regs = FUNC9(spfi->dev, res);
	if (FUNC0(spfi->regs)) {
		ret = FUNC1(spfi->regs);
		goto put_spi;
	}
	spfi->phys = res->start;

	spfi->irq = FUNC16(pdev, 0);
	if (spfi->irq < 0) {
		ret = spfi->irq;
		goto put_spi;
	}
	ret = FUNC10(spfi->dev, spfi->irq, img_spfi_irq,
			       IRQ_TYPE_LEVEL_HIGH, FUNC6(spfi->dev), spfi);
	if (ret)
		goto put_spi;

	spfi->sys_clk = FUNC8(spfi->dev, "sys");
	if (FUNC0(spfi->sys_clk)) {
		ret = FUNC1(spfi->sys_clk);
		goto put_spi;
	}
	spfi->spfi_clk = FUNC8(spfi->dev, "spfi");
	if (FUNC0(spfi->spfi_clk)) {
		ret = FUNC1(spfi->spfi_clk);
		goto put_spi;
	}

	ret = FUNC5(spfi->sys_clk);
	if (ret)
		goto put_spi;
	ret = FUNC5(spfi->spfi_clk);
	if (ret)
		goto disable_pclk;

	FUNC22(spfi);
	/*
	 * Only enable the error (IACCESS) interrupt.  In PIO mode we'll
	 * poll the status of the FIFOs.
	 */
	FUNC23(spfi, SPFI_INTERRUPT_IACCESS, SPFI_INTERRUPT_ENABLE);

	master->auto_runtime_pm = true;
	master->bus_num = pdev->id;
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_TX_DUAL | SPI_RX_DUAL;
	if (FUNC14(spfi->dev->of_node, "img,supports-quad-mode"))
		master->mode_bits |= SPI_TX_QUAD | SPI_RX_QUAD;
	master->dev.of_node = pdev->dev.of_node;
	master->bits_per_word_mask = FUNC2(32) | FUNC2(8);
	master->max_speed_hz = FUNC4(spfi->spfi_clk) / 4;
	master->min_speed_hz = FUNC4(spfi->spfi_clk) / 512;

	/*
	 * Maximum speed supported by spfi is limited to the lower value
	 * between 1/4 of the SPFI clock or to "spfi-max-frequency"
	 * defined in the device tree.
	 * If no value is defined in the device tree assume the maximum
	 * speed supported to be 1/4 of the SPFI clock.
	 */
	if (!FUNC15(spfi->dev->of_node, "spfi-max-frequency",
				  &max_speed_hz)) {
		if (master->max_speed_hz > max_speed_hz)
			master->max_speed_hz = max_speed_hz;
	}

	master->setup = img_spfi_setup;
	master->cleanup = img_spfi_cleanup;
	master->transfer_one = img_spfi_transfer_one;
	master->prepare_message = img_spfi_prepare;
	master->unprepare_message = img_spfi_unprepare;
	master->handle_err = img_spfi_handle_err;

	spfi->tx_ch = FUNC13(spfi->dev, "tx");
	spfi->rx_ch = FUNC13(spfi->dev, "rx");
	if (!spfi->tx_ch || !spfi->rx_ch) {
		if (spfi->tx_ch)
			FUNC12(spfi->tx_ch);
		if (spfi->rx_ch)
			FUNC12(spfi->rx_ch);
		FUNC7(spfi->dev, "Failed to get DMA channels, falling back to PIO mode\n");
	} else {
		master->dma_tx = spfi->tx_ch;
		master->dma_rx = spfi->rx_ch;
		master->can_dma = img_spfi_can_dma;
	}

	FUNC21(spfi->dev);
	FUNC20(spfi->dev);

	ret = FUNC11(spfi->dev, master);
	if (ret)
		goto disable_pm;

	return 0;

disable_pm:
	FUNC19(spfi->dev);
	if (spfi->rx_ch)
		FUNC12(spfi->rx_ch);
	if (spfi->tx_ch)
		FUNC12(spfi->tx_ch);
	FUNC3(spfi->spfi_clk);
disable_pclk:
	FUNC3(spfi->sys_clk);
put_spi:
	FUNC26(master);

	return ret;
}