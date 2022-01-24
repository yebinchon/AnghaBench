#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  of_node; } ;
struct spi_controller {int mode_bits; int auto_runtime_pm; int use_gpio_descriptors; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  slave_abort; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  setup; TYPE_2__ dev; int /*<<< orphan*/  bus_num; int /*<<< orphan*/  flags; int /*<<< orphan*/  num_chipselect; } ;
struct sh_msiof_spi_priv {struct sh_msiof_spi_info* info; scalar_t__ rx_fifo_size; scalar_t__ tx_fifo_size; struct platform_device* pdev; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  clk; int /*<<< orphan*/  done_txdma; int /*<<< orphan*/  done; int /*<<< orphan*/  min_div_pow; struct spi_controller* ctlr; } ;
struct sh_msiof_spi_info {scalar_t__ mode; int /*<<< orphan*/  num_chipselect; scalar_t__ rx_fifo_override; scalar_t__ tx_fifo_override; } ;
struct sh_msiof_chipdata {int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  ctlr_flags; scalar_t__ rx_fifo_size; scalar_t__ tx_fifo_size; int /*<<< orphan*/  min_div_pow; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  id; TYPE_1__* id_entry; } ;
struct TYPE_16__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MSIOF_SPI_SLAVE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SPI_3WIRE ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 struct sh_msiof_spi_info* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sh_msiof_spi_priv*) ; 
 int FUNC9 (TYPE_3__*,struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct sh_msiof_chipdata* FUNC11 (TYPE_3__*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct sh_msiof_spi_priv*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int FUNC16 (struct sh_msiof_spi_priv*) ; 
 int /*<<< orphan*/  sh_msiof_prepare_message ; 
 int /*<<< orphan*/  FUNC17 (struct sh_msiof_spi_priv*) ; 
 int FUNC18 (struct sh_msiof_spi_priv*) ; 
 int /*<<< orphan*/  sh_msiof_slave_abort ; 
 int /*<<< orphan*/  sh_msiof_spi_irq ; 
 struct sh_msiof_spi_info* FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  sh_msiof_spi_setup ; 
 int /*<<< orphan*/  sh_msiof_transfer_one ; 
 struct spi_controller* FUNC20 (TYPE_3__*,int) ; 
 struct spi_controller* FUNC21 (TYPE_3__*,int) ; 
 struct sh_msiof_spi_priv* FUNC22 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC23 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct spi_controller *ctlr;
	const struct sh_msiof_chipdata *chipdata;
	struct sh_msiof_spi_info *info;
	struct sh_msiof_spi_priv *p;
	int i;
	int ret;

	chipdata = FUNC11(&pdev->dev);
	if (chipdata) {
		info = FUNC19(&pdev->dev);
	} else {
		chipdata = (const void *)pdev->id_entry->driver_data;
		info = FUNC3(&pdev->dev);
	}

	if (!info) {
		FUNC2(&pdev->dev, "failed to obtain device info\n");
		return -ENXIO;
	}

	if (info->mode == MSIOF_SPI_SLAVE)
		ctlr = FUNC21(&pdev->dev,
				       sizeof(struct sh_msiof_spi_priv));
	else
		ctlr = FUNC20(&pdev->dev,
					sizeof(struct sh_msiof_spi_priv));
	if (ctlr == NULL)
		return -ENOMEM;

	p = FUNC22(ctlr);

	FUNC13(pdev, p);
	p->ctlr = ctlr;
	p->info = info;
	p->min_div_pow = chipdata->min_div_pow;

	FUNC10(&p->done);
	FUNC10(&p->done_txdma);

	p->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(p->clk)) {
		FUNC2(&pdev->dev, "cannot get clock\n");
		ret = FUNC1(p->clk);
		goto err1;
	}

	i = FUNC12(pdev, 0);
	if (i < 0) {
		ret = i;
		goto err1;
	}

	p->mapbase = FUNC7(pdev, 0);
	if (FUNC0(p->mapbase)) {
		ret = FUNC1(p->mapbase);
		goto err1;
	}

	ret = FUNC8(&pdev->dev, i, sh_msiof_spi_irq, 0,
			       FUNC4(&pdev->dev), p);
	if (ret) {
		FUNC2(&pdev->dev, "unable to request irq\n");
		goto err1;
	}

	p->pdev = pdev;
	FUNC15(&pdev->dev);

	/* Platform data may override FIFO sizes */
	p->tx_fifo_size = chipdata->tx_fifo_size;
	p->rx_fifo_size = chipdata->rx_fifo_size;
	if (p->info->tx_fifo_override)
		p->tx_fifo_size = p->info->tx_fifo_override;
	if (p->info->rx_fifo_override)
		p->rx_fifo_size = p->info->rx_fifo_override;

	/* Setup GPIO chip selects */
	ctlr->num_chipselect = p->info->num_chipselect;
	ret = FUNC16(p);
	if (ret)
		goto err1;

	/* init controller code */
	ctlr->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH;
	ctlr->mode_bits |= SPI_LSB_FIRST | SPI_3WIRE;
	ctlr->flags = chipdata->ctlr_flags;
	ctlr->bus_num = pdev->id;
	ctlr->dev.of_node = pdev->dev.of_node;
	ctlr->setup = sh_msiof_spi_setup;
	ctlr->prepare_message = sh_msiof_prepare_message;
	ctlr->slave_abort = sh_msiof_slave_abort;
	ctlr->bits_per_word_mask = chipdata->bits_per_word_mask;
	ctlr->auto_runtime_pm = true;
	ctlr->transfer_one = sh_msiof_transfer_one;
	ctlr->use_gpio_descriptors = true;

	ret = FUNC18(p);
	if (ret < 0)
		FUNC5(&pdev->dev, "DMA not available, using PIO\n");

	ret = FUNC9(&pdev->dev, ctlr);
	if (ret < 0) {
		FUNC2(&pdev->dev, "devm_spi_register_controller error.\n");
		goto err2;
	}

	return 0;

 err2:
	FUNC17(p);
	FUNC14(&pdev->dev);
 err1:
	FUNC23(ctlr);
	return ret;
}