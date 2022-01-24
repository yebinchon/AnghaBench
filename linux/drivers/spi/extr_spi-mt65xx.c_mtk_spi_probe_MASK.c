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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_16__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int auto_runtime_pm; int mode_bits; int num_chipselect; int /*<<< orphan*/ * cs_gpios; int /*<<< orphan*/  flags; int /*<<< orphan*/  setup; int /*<<< orphan*/  can_dma; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  set_cs; TYPE_1__ dev; } ;
struct resource {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {TYPE_2__* data; } ;
struct mtk_spi {int pad_num; scalar_t__* pad_sel; TYPE_2__* dev_comp; void* spi_clk; void* parent_clk; void* sel_clk; void* base; } ;
struct TYPE_17__ {scalar_t__ dma_ext; scalar_t__ need_pad_sel; scalar_t__ must_tx; } ;

/* Variables and functions */
 int DMA_ADDR_DEF_BITS ; 
 int DMA_ADDR_EXT_BITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_NONE ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ MT8173_SPI_MAX_PAD_SEL ; 
 int FUNC2 (void*) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  SPI_MASTER_MUST_TX ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,int,int) ; 
 void* FUNC9 (TYPE_3__*,char*) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (TYPE_3__*,struct resource*) ; 
 scalar_t__* FUNC12 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_master*) ; 
 int FUNC14 (TYPE_3__*,struct spi_master*) ; 
 int FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_spi_can_dma ; 
 int /*<<< orphan*/  mtk_spi_interrupt ; 
 int /*<<< orphan*/  mtk_spi_of_match ; 
 int /*<<< orphan*/  mtk_spi_prepare_message ; 
 int /*<<< orphan*/  mtk_spi_set_cs ; 
 int /*<<< orphan*/  mtk_spi_setup ; 
 int /*<<< orphan*/  mtk_spi_transfer_one ; 
 struct of_device_id* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int,scalar_t__*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 struct spi_master* FUNC24 (TYPE_3__*,int) ; 
 struct mtk_spi* FUNC25 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC26 (struct spi_master*) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct spi_master *master;
	struct mtk_spi *mdata;
	const struct of_device_id *of_id;
	struct resource *res;
	int i, irq, ret, addr_bits;

	master = FUNC24(&pdev->dev, sizeof(*mdata));
	if (!master) {
		FUNC6(&pdev->dev, "failed to alloc spi master\n");
		return -ENOMEM;
	}

	master->auto_runtime_pm = true;
	master->dev.of_node = pdev->dev.of_node;
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LSB_FIRST;

	master->set_cs = mtk_spi_set_cs;
	master->prepare_message = mtk_spi_prepare_message;
	master->transfer_one = mtk_spi_transfer_one;
	master->can_dma = mtk_spi_can_dma;
	master->setup = mtk_spi_setup;

	of_id = FUNC16(mtk_spi_of_match, pdev->dev.of_node);
	if (!of_id) {
		FUNC6(&pdev->dev, "failed to probe of_node\n");
		ret = -EINVAL;
		goto err_put_master;
	}

	mdata = FUNC25(master);
	mdata->dev_comp = of_id->data;
	if (mdata->dev_comp->must_tx)
		master->flags = SPI_MASTER_MUST_TX;

	if (mdata->dev_comp->need_pad_sel) {
		mdata->pad_num = FUNC17(
			pdev->dev.of_node,
			"mediatek,pad-select");
		if (mdata->pad_num < 0) {
			FUNC6(&pdev->dev,
				"No 'mediatek,pad-select' property\n");
			ret = -EINVAL;
			goto err_put_master;
		}

		mdata->pad_sel = FUNC12(&pdev->dev, mdata->pad_num,
						    sizeof(u32), GFP_KERNEL);
		if (!mdata->pad_sel) {
			ret = -ENOMEM;
			goto err_put_master;
		}

		for (i = 0; i < mdata->pad_num; i++) {
			FUNC18(pdev->dev.of_node,
						   "mediatek,pad-select",
						   i, &mdata->pad_sel[i]);
			if (mdata->pad_sel[i] > MT8173_SPI_MAX_PAD_SEL) {
				FUNC6(&pdev->dev, "wrong pad-sel[%d]: %u\n",
					i, mdata->pad_sel[i]);
				ret = -EINVAL;
				goto err_put_master;
			}
		}
	}

	FUNC21(pdev, master);

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		ret = -ENODEV;
		FUNC6(&pdev->dev, "failed to determine base address\n");
		goto err_put_master;
	}

	mdata->base = FUNC11(&pdev->dev, res);
	if (FUNC1(mdata->base)) {
		ret = FUNC2(mdata->base);
		goto err_put_master;
	}

	irq = FUNC19(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto err_put_master;
	}

	if (!pdev->dev.dma_mask)
		pdev->dev.dma_mask = &pdev->dev.coherent_dma_mask;

	ret = FUNC13(&pdev->dev, irq, mtk_spi_interrupt,
			       IRQF_TRIGGER_NONE, FUNC7(&pdev->dev), master);
	if (ret) {
		FUNC6(&pdev->dev, "failed to register irq (%d)\n", ret);
		goto err_put_master;
	}

	mdata->parent_clk = FUNC9(&pdev->dev, "parent-clk");
	if (FUNC1(mdata->parent_clk)) {
		ret = FUNC2(mdata->parent_clk);
		FUNC6(&pdev->dev, "failed to get parent-clk: %d\n", ret);
		goto err_put_master;
	}

	mdata->sel_clk = FUNC9(&pdev->dev, "sel-clk");
	if (FUNC1(mdata->sel_clk)) {
		ret = FUNC2(mdata->sel_clk);
		FUNC6(&pdev->dev, "failed to get sel-clk: %d\n", ret);
		goto err_put_master;
	}

	mdata->spi_clk = FUNC9(&pdev->dev, "spi-clk");
	if (FUNC1(mdata->spi_clk)) {
		ret = FUNC2(mdata->spi_clk);
		FUNC6(&pdev->dev, "failed to get spi-clk: %d\n", ret);
		goto err_put_master;
	}

	ret = FUNC4(mdata->spi_clk);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed to enable spi_clk (%d)\n", ret);
		goto err_put_master;
	}

	ret = FUNC5(mdata->sel_clk, mdata->parent_clk);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed to clk_set_parent (%d)\n", ret);
		FUNC3(mdata->spi_clk);
		goto err_put_master;
	}

	FUNC3(mdata->spi_clk);

	FUNC23(&pdev->dev);

	ret = FUNC14(&pdev->dev, master);
	if (ret) {
		FUNC6(&pdev->dev, "failed to register master (%d)\n", ret);
		goto err_disable_runtime_pm;
	}

	if (mdata->dev_comp->need_pad_sel) {
		if (mdata->pad_num != master->num_chipselect) {
			FUNC6(&pdev->dev,
				"pad_num does not match num_chipselect(%d != %d)\n",
				mdata->pad_num, master->num_chipselect);
			ret = -EINVAL;
			goto err_disable_runtime_pm;
		}

		if (!master->cs_gpios && master->num_chipselect > 1) {
			FUNC6(&pdev->dev,
				"cs_gpios not specified and num_chipselect > 1\n");
			ret = -EINVAL;
			goto err_disable_runtime_pm;
		}

		if (master->cs_gpios) {
			for (i = 0; i < master->num_chipselect; i++) {
				ret = FUNC10(&pdev->dev,
							master->cs_gpios[i],
							FUNC7(&pdev->dev));
				if (ret) {
					FUNC6(&pdev->dev,
						"can't get CS GPIO %i\n", i);
					goto err_disable_runtime_pm;
				}
			}
		}
	}

	if (mdata->dev_comp->dma_ext)
		addr_bits = DMA_ADDR_EXT_BITS;
	else
		addr_bits = DMA_ADDR_DEF_BITS;
	ret = FUNC15(&pdev->dev, FUNC0(addr_bits));
	if (ret)
		FUNC8(&pdev->dev, "SPI dma_set_mask(%d) failed, ret:%d\n",
			   addr_bits, ret);

	return 0;

err_disable_runtime_pm:
	FUNC22(&pdev->dev);
err_put_master:
	FUNC26(master);

	return ret;
}