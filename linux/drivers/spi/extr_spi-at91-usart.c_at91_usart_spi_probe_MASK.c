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
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct spi_controller {int mode_bits; int flags; void* min_speed_hz; void* max_speed_hz; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  can_dma; int /*<<< orphan*/  unprepare_message; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  setup; int /*<<< orphan*/  bits_per_word_mask; TYPE_1__ dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_12__ {TYPE_2__* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct clk {int dummy; } ;
struct at91_usart_spi {int irq; int /*<<< orphan*/  xfer_completion; int /*<<< orphan*/  lock; int /*<<< orphan*/  mpdev; int /*<<< orphan*/  phybase; int /*<<< orphan*/  spi_clk; struct clk* clk; struct clk* regs; TYPE_3__* dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LOOP ; 
 int SPI_MASTER_MUST_RX ; 
 int SPI_MASTER_MUST_TX ; 
 int /*<<< orphan*/  US_MAX_CLK_DIV ; 
 int /*<<< orphan*/  US_MIN_CLK_DIV ; 
 int /*<<< orphan*/  VERSION ; 
 int FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  at91_usart_spi_can_dma ; 
 int /*<<< orphan*/  at91_usart_spi_cleanup ; 
 int FUNC5 (struct spi_controller*,struct at91_usart_spi*) ; 
 int /*<<< orphan*/  FUNC6 (struct at91_usart_spi*) ; 
 int /*<<< orphan*/  at91_usart_spi_interrupt ; 
 int /*<<< orphan*/  at91_usart_spi_prepare_message ; 
 int /*<<< orphan*/  FUNC7 (struct at91_usart_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_controller*) ; 
 int /*<<< orphan*/  at91_usart_spi_setup ; 
 int /*<<< orphan*/  at91_usart_spi_transfer_one ; 
 int /*<<< orphan*/  at91_usart_spi_unprepare_message ; 
 int /*<<< orphan*/  FUNC9 (struct clk*) ; 
 int /*<<< orphan*/  FUNC10 (struct clk*) ; 
 int FUNC11 (struct clk*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 struct clk* FUNC14 (TYPE_2__*,char*) ; 
 struct clk* FUNC15 (TYPE_3__*,struct resource*) ; 
 int FUNC16 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_controller*) ; 
 int FUNC17 (TYPE_3__*,struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct spi_controller*) ; 
 struct spi_controller* FUNC22 (TYPE_3__*,int) ; 
 struct at91_usart_spi* FUNC23 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC24 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct resource *regs;
	struct spi_controller *controller;
	struct at91_usart_spi *aus;
	struct clk *clk;
	int irq;
	int ret;

	regs = FUNC20(FUNC26(pdev->dev.parent),
				     IORESOURCE_MEM, 0);
	if (!regs)
		return -EINVAL;

	irq = FUNC19(FUNC26(pdev->dev.parent), 0);
	if (irq < 0)
		return irq;

	clk = FUNC14(pdev->dev.parent, "usart");
	if (FUNC1(clk))
		return FUNC2(clk);

	ret = -ENOMEM;
	controller = FUNC22(&pdev->dev, sizeof(*aus));
	if (!controller)
		goto at91_usart_spi_probe_fail;

	ret = FUNC4(pdev);
	if (ret)
		goto at91_usart_spi_probe_fail;

	controller->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP | SPI_CS_HIGH;
	controller->dev.of_node = pdev->dev.parent->of_node;
	controller->bits_per_word_mask = FUNC3(8);
	controller->setup = at91_usart_spi_setup;
	controller->flags = SPI_MASTER_MUST_RX | SPI_MASTER_MUST_TX;
	controller->transfer_one = at91_usart_spi_transfer_one;
	controller->prepare_message = at91_usart_spi_prepare_message;
	controller->unprepare_message = at91_usart_spi_unprepare_message;
	controller->can_dma = at91_usart_spi_can_dma;
	controller->cleanup = at91_usart_spi_cleanup;
	controller->max_speed_hz = FUNC0(FUNC10(clk),
						US_MIN_CLK_DIV);
	controller->min_speed_hz = FUNC0(FUNC10(clk),
						US_MAX_CLK_DIV);
	FUNC21(pdev, controller);

	aus = FUNC23(controller);

	aus->dev = &pdev->dev;
	aus->regs = FUNC15(&pdev->dev, regs);
	if (FUNC1(aus->regs)) {
		ret = FUNC2(aus->regs);
		goto at91_usart_spi_probe_fail;
	}

	aus->irq = irq;
	aus->clk = clk;

	ret = FUNC16(&pdev->dev, irq, at91_usart_spi_interrupt, 0,
			       FUNC13(&pdev->dev), controller);
	if (ret)
		goto at91_usart_spi_probe_fail;

	ret = FUNC11(clk);
	if (ret)
		goto at91_usart_spi_probe_fail;

	aus->spi_clk = FUNC10(clk);
	FUNC6(aus);

	aus->phybase = regs->start;

	aus->mpdev = FUNC26(pdev->dev.parent);

	ret = FUNC5(controller, aus);
	if (ret)
		goto at91_usart_fail_dma;

	FUNC25(&aus->lock);
	FUNC18(&aus->xfer_completion);

	ret = FUNC17(&pdev->dev, controller);
	if (ret)
		goto at91_usart_fail_register_master;

	FUNC12(&pdev->dev,
		 "AT91 USART SPI Controller version 0x%x at %pa (irq %d)\n",
		 FUNC7(aus, VERSION),
		 &regs->start, irq);

	return 0;

at91_usart_fail_register_master:
	FUNC8(controller);
at91_usart_fail_dma:
	FUNC9(clk);
at91_usart_spi_probe_fail:
	FUNC24(controller);
	return ret;
}