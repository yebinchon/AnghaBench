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
struct spi_controller {int mode_bits; int bus_num; int num_chipselect; TYPE_1__ dev; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/  setup; } ;
struct resource {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct atmel_qspi {void* pclk; void* qspick; TYPE_3__* caps; void* mem; void* regs; struct platform_device* pdev; int /*<<< orphan*/  cmd_completion; } ;
struct TYPE_12__ {scalar_t__ has_qspick; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_qspi*) ; 
 int /*<<< orphan*/  atmel_qspi_interrupt ; 
 int /*<<< orphan*/  atmel_qspi_mem_ops ; 
 int /*<<< orphan*/  atmel_qspi_setup ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 void* FUNC7 (TYPE_2__*,char*) ; 
 void* FUNC8 (TYPE_2__*,struct resource*) ; 
 int FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct atmel_qspi*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (TYPE_2__*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct spi_controller*) ; 
 struct spi_controller* FUNC15 (TYPE_2__*,int) ; 
 struct atmel_qspi* FUNC16 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC17 (struct spi_controller*) ; 
 int FUNC18 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct spi_controller *ctrl;
	struct atmel_qspi *aq;
	struct resource *res;
	int irq, err = 0;

	ctrl = FUNC15(&pdev->dev, sizeof(*aq));
	if (!ctrl)
		return -ENOMEM;

	ctrl->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD | SPI_TX_DUAL | SPI_TX_QUAD;
	ctrl->setup = atmel_qspi_setup;
	ctrl->bus_num = -1;
	ctrl->mem_ops = &atmel_qspi_mem_ops;
	ctrl->num_chipselect = 1;
	ctrl->dev.of_node = pdev->dev.of_node;
	FUNC14(pdev, ctrl);

	aq = FUNC16(ctrl);

	FUNC10(&aq->cmd_completion);
	aq->pdev = pdev;

	/* Map the registers */
	res = FUNC13(pdev, IORESOURCE_MEM, "qspi_base");
	aq->regs = FUNC8(&pdev->dev, res);
	if (FUNC0(aq->regs)) {
		FUNC5(&pdev->dev, "missing registers\n");
		err = FUNC1(aq->regs);
		goto exit;
	}

	/* Map the AHB memory */
	res = FUNC13(pdev, IORESOURCE_MEM, "qspi_mmap");
	aq->mem = FUNC8(&pdev->dev, res);
	if (FUNC0(aq->mem)) {
		FUNC5(&pdev->dev, "missing AHB memory\n");
		err = FUNC1(aq->mem);
		goto exit;
	}

	/* Get the peripheral clock */
	aq->pclk = FUNC7(&pdev->dev, "pclk");
	if (FUNC0(aq->pclk))
		aq->pclk = FUNC7(&pdev->dev, NULL);

	if (FUNC0(aq->pclk)) {
		FUNC5(&pdev->dev, "missing peripheral clock\n");
		err = FUNC1(aq->pclk);
		goto exit;
	}

	/* Enable the peripheral clock */
	err = FUNC4(aq->pclk);
	if (err) {
		FUNC5(&pdev->dev, "failed to enable the peripheral clock\n");
		goto exit;
	}

	aq->caps = FUNC11(&pdev->dev);
	if (!aq->caps) {
		FUNC5(&pdev->dev, "Could not retrieve QSPI caps\n");
		err = -EINVAL;
		goto exit;
	}

	if (aq->caps->has_qspick) {
		/* Get the QSPI system clock */
		aq->qspick = FUNC7(&pdev->dev, "qspick");
		if (FUNC0(aq->qspick)) {
			FUNC5(&pdev->dev, "missing system clock\n");
			err = FUNC1(aq->qspick);
			goto disable_pclk;
		}

		/* Enable the QSPI system clock */
		err = FUNC4(aq->qspick);
		if (err) {
			FUNC5(&pdev->dev,
				"failed to enable the QSPI system clock\n");
			goto disable_pclk;
		}
	}

	/* Request the IRQ */
	irq = FUNC12(pdev, 0);
	if (irq < 0) {
		err = irq;
		goto disable_qspick;
	}
	err = FUNC9(&pdev->dev, irq, atmel_qspi_interrupt,
			       0, FUNC6(&pdev->dev), aq);
	if (err)
		goto disable_qspick;

	FUNC2(aq);

	err = FUNC18(ctrl);
	if (err)
		goto disable_qspick;

	return 0;

disable_qspick:
	FUNC3(aq->qspick);
disable_pclk:
	FUNC3(aq->pclk);
exit:
	FUNC17(ctrl);

	return err;
}