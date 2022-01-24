#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_11__ {scalar_t__ of_node; } ;
struct spi_master {int bus_num; int mode_bits; int num_chipselect; TYPE_3__ dev; int /*<<< orphan*/  cleanup; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  setup; } ;
struct resource {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct bcm_qspi_soc_intc {int /*<<< orphan*/  (* bcm_qspi_int_set ) (struct bcm_qspi_soc_intc*,int /*<<< orphan*/ ,int) ;} ;
struct bcm_qspi_dev_id {int dummy; } ;
struct TYPE_9__ {int width; int addrlen; int hp; } ;
struct TYPE_10__ {int mspi_last_trans; scalar_t__ byte; int /*<<< orphan*/ * trans; } ;
struct bcm_qspi {int bspi_mode; int base_clk; int max_speed_hz; int curr_cs; TYPE_5__* dev_ids; void* clk; TYPE_1__ xfer_mode; int /*<<< orphan*/  bspi_done; int /*<<< orphan*/  mspi_done; struct bcm_qspi_soc_intc* soc_intc; void** base; int /*<<< orphan*/  big_endian; struct spi_master* master; TYPE_2__ trans_pos; struct platform_device* pdev; } ;
struct TYPE_13__ {TYPE_4__* irqp; struct bcm_qspi* dev; } ;
struct TYPE_12__ {char* irq_name; scalar_t__ irq_source; int /*<<< orphan*/  irq_handler; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 size_t BSPI ; 
 size_t CHIP_SELECT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 size_t MSPI ; 
 int /*<<< orphan*/  MSPI_DONE ; 
 int NUM_CHIPSELECT ; 
 int FUNC2 (void*) ; 
 int QSPI_SPBR_MIN ; 
 scalar_t__ SINGLE_L2 ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int /*<<< orphan*/  bcm_qspi_cleanup ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_qspi*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_qspi*) ; 
 int /*<<< orphan*/  bcm_qspi_mem_ops ; 
 int /*<<< orphan*/  bcm_qspi_of_match ; 
 int /*<<< orphan*/  bcm_qspi_setup ; 
 int /*<<< orphan*/  bcm_qspi_transfer_one ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (void*) ; 
 int FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*) ; 
 void* FUNC12 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC13 (struct device*,struct resource*) ; 
 int FUNC14 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,TYPE_5__*) ; 
 int FUNC15 (struct device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC17 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,char*,int*) ; 
 int FUNC22 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct platform_device*,char const*) ; 
 struct resource* FUNC24 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*,struct bcm_qspi*) ; 
 TYPE_4__* qspi_irq_tab ; 
 struct spi_master* FUNC26 (struct device*,int) ; 
 struct bcm_qspi* FUNC27 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC28 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC29 (struct bcm_qspi_soc_intc*,int /*<<< orphan*/ ,int) ; 

int FUNC30(struct platform_device *pdev,
		   struct bcm_qspi_soc_intc *soc_intc)
{
	struct device *dev = &pdev->dev;
	struct bcm_qspi *qspi;
	struct spi_master *master;
	struct resource *res;
	int irq, ret = 0, num_ints = 0;
	u32 val;
	const char *name = NULL;
	int num_irqs = FUNC0(qspi_irq_tab);

	/* We only support device-tree instantiation */
	if (!dev->of_node)
		return -ENODEV;

	if (!FUNC20(bcm_qspi_of_match, dev->of_node))
		return -ENODEV;

	master = FUNC26(dev, sizeof(struct bcm_qspi));
	if (!master) {
		FUNC9(dev, "error allocating spi_master\n");
		return -ENOMEM;
	}

	qspi = FUNC27(master);
	qspi->pdev = pdev;
	qspi->trans_pos.trans = NULL;
	qspi->trans_pos.byte = 0;
	qspi->trans_pos.mspi_last_trans = true;
	qspi->master = master;

	master->bus_num = -1;
	master->mode_bits = SPI_CPHA | SPI_CPOL | SPI_RX_DUAL | SPI_RX_QUAD;
	master->setup = bcm_qspi_setup;
	master->transfer_one = bcm_qspi_transfer_one;
	master->mem_ops = &bcm_qspi_mem_ops;
	master->cleanup = bcm_qspi_cleanup;
	master->dev.of_node = dev->of_node;
	master->num_chipselect = NUM_CHIPSELECT;

	qspi->big_endian = FUNC19(dev->of_node);

	if (!FUNC21(dev->of_node, "num-cs", &val))
		master->num_chipselect = val;

	res = FUNC24(pdev, IORESOURCE_MEM, "hif_mspi");
	if (!res)
		res = FUNC24(pdev, IORESOURCE_MEM,
						   "mspi");

	if (res) {
		qspi->base[MSPI]  = FUNC13(dev, res);
		if (FUNC1(qspi->base[MSPI])) {
			ret = FUNC2(qspi->base[MSPI]);
			goto qspi_resource_err;
		}
	} else {
		goto qspi_resource_err;
	}

	res = FUNC24(pdev, IORESOURCE_MEM, "bspi");
	if (res) {
		qspi->base[BSPI]  = FUNC13(dev, res);
		if (FUNC1(qspi->base[BSPI])) {
			ret = FUNC2(qspi->base[BSPI]);
			goto qspi_resource_err;
		}
		qspi->bspi_mode = true;
	} else {
		qspi->bspi_mode = false;
	}

	FUNC10(dev, "using %smspi mode\n", qspi->bspi_mode ? "bspi-" : "");

	res = FUNC24(pdev, IORESOURCE_MEM, "cs_reg");
	if (res) {
		qspi->base[CHIP_SELECT]  = FUNC13(dev, res);
		if (FUNC1(qspi->base[CHIP_SELECT])) {
			ret = FUNC2(qspi->base[CHIP_SELECT]);
			goto qspi_resource_err;
		}
	}

	qspi->dev_ids = FUNC17(num_irqs, sizeof(struct bcm_qspi_dev_id),
				GFP_KERNEL);
	if (!qspi->dev_ids) {
		ret = -ENOMEM;
		goto qspi_resource_err;
	}

	for (val = 0; val < num_irqs; val++) {
		irq = -1;
		name = qspi_irq_tab[val].irq_name;
		if (qspi_irq_tab[val].irq_source == SINGLE_L2) {
			/* get the l2 interrupts */
			irq = FUNC23(pdev, name);
		} else if (!num_ints && soc_intc) {
			/* all mspi, bspi intrs muxed to one L1 intr */
			irq = FUNC22(pdev, 0);
		}

		if (irq  >= 0) {
			ret = FUNC14(&pdev->dev, irq,
					       qspi_irq_tab[val].irq_handler, 0,
					       name,
					       &qspi->dev_ids[val]);
			if (ret < 0) {
				FUNC9(&pdev->dev, "IRQ %s not found\n", name);
				goto qspi_probe_err;
			}

			qspi->dev_ids[val].dev = qspi;
			qspi->dev_ids[val].irqp = &qspi_irq_tab[val];
			num_ints++;
			FUNC8(&pdev->dev, "registered IRQ %s %d\n",
				qspi_irq_tab[val].irq_name,
				irq);
		}
	}

	if (!num_ints) {
		FUNC9(&pdev->dev, "no IRQs registered, cannot init driver\n");
		ret = -EINVAL;
		goto qspi_probe_err;
	}

	/*
	 * Some SoCs integrate spi controller (e.g., its interrupt bits)
	 * in specific ways
	 */
	if (soc_intc) {
		qspi->soc_intc = soc_intc;
		soc_intc->bcm_qspi_int_set(soc_intc, MSPI_DONE, true);
	} else {
		qspi->soc_intc = NULL;
	}

	qspi->clk = FUNC12(&pdev->dev, NULL);
	if (FUNC1(qspi->clk)) {
		FUNC11(dev, "unable to get clock\n");
		ret = FUNC2(qspi->clk);
		goto qspi_probe_err;
	}

	ret = FUNC7(qspi->clk);
	if (ret) {
		FUNC9(dev, "failed to prepare clock\n");
		goto qspi_probe_err;
	}

	qspi->base_clk = FUNC6(qspi->clk);
	qspi->max_speed_hz = qspi->base_clk / (QSPI_SPBR_MIN * 2);

	FUNC3(qspi);
	FUNC16(&qspi->mspi_done);
	FUNC16(&qspi->bspi_done);
	qspi->curr_cs = -1;

	FUNC25(pdev, qspi);

	qspi->xfer_mode.width = -1;
	qspi->xfer_mode.addrlen = -1;
	qspi->xfer_mode.hp = -1;

	ret = FUNC15(&pdev->dev, master);
	if (ret < 0) {
		FUNC9(dev, "can't register master\n");
		goto qspi_reg_err;
	}

	return 0;

qspi_reg_err:
	FUNC4(qspi);
	FUNC5(qspi->clk);
qspi_probe_err:
	FUNC18(qspi->dev_ids);
qspi_resource_err:
	FUNC28(master);
	return ret;
}