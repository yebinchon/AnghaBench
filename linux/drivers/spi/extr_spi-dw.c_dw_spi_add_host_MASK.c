#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  fwnode; int /*<<< orphan*/  of_node; } ;
struct spi_controller {int use_gpio_descriptors; int mode_bits; struct device dev; int /*<<< orphan*/  can_dma; scalar_t__ set_cs; int /*<<< orphan*/  flags; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  handle_err; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; int /*<<< orphan*/  bits_per_word_mask; } ;
struct dw_spi {int /*<<< orphan*/  irq; TYPE_1__* dma_ops; scalar_t__ dma_inited; scalar_t__ set_cs; int /*<<< orphan*/  max_freq; int /*<<< orphan*/  num_cs; int /*<<< orphan*/  bus_num; scalar_t__ paddr; scalar_t__ dma_addr; int /*<<< orphan*/  type; struct spi_controller* master; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int (* dma_init ) (struct dw_spi*) ;int /*<<< orphan*/  (* dma_exit ) (struct dw_spi*) ;int /*<<< orphan*/  can_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DW_SPI_DR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_LOOP ; 
 int /*<<< orphan*/  SPI_MASTER_GPIO_SS ; 
 int /*<<< orphan*/  SSI_MOTO_SPI ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,struct spi_controller*) ; 
 int /*<<< orphan*/  dw_spi_cleanup ; 
 int /*<<< orphan*/  FUNC6 (struct dw_spi*) ; 
 int /*<<< orphan*/  dw_spi_handle_err ; 
 int /*<<< orphan*/  dw_spi_irq ; 
 scalar_t__ dw_spi_set_cs ; 
 int /*<<< orphan*/  dw_spi_setup ; 
 int /*<<< orphan*/  dw_spi_transfer_one ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct spi_controller*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_controller*) ; 
 struct spi_controller* FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_controller*,struct dw_spi*) ; 
 int /*<<< orphan*/  FUNC12 (struct dw_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,struct dw_spi*) ; 
 int FUNC14 (struct dw_spi*) ; 
 int /*<<< orphan*/  FUNC15 (struct dw_spi*) ; 

int FUNC16(struct device *dev, struct dw_spi *dws)
{
	struct spi_controller *master;
	int ret;

	FUNC0(dws == NULL);

	master = FUNC9(dev, 0);
	if (!master)
		return -ENOMEM;

	dws->master = master;
	dws->type = SSI_MOTO_SPI;
	dws->dma_inited = 0;
	dws->dma_addr = (dma_addr_t)(dws->paddr + DW_SPI_DR);

	FUNC11(master, dws);

	ret = FUNC8(dws->irq, dw_spi_irq, IRQF_SHARED, FUNC3(dev),
			  master);
	if (ret < 0) {
		FUNC2(dev, "can not get IRQ\n");
		goto err_free_master;
	}

	master->use_gpio_descriptors = true;
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP;
	master->bits_per_word_mask =  FUNC1(4, 16);
	master->bus_num = dws->bus_num;
	master->num_chipselect = dws->num_cs;
	master->setup = dw_spi_setup;
	master->cleanup = dw_spi_cleanup;
	master->set_cs = dw_spi_set_cs;
	master->transfer_one = dw_spi_transfer_one;
	master->handle_err = dw_spi_handle_err;
	master->max_speed_hz = dws->max_freq;
	master->dev.of_node = dev->of_node;
	master->dev.fwnode = dev->fwnode;
	master->flags = SPI_MASTER_GPIO_SS;

	if (dws->set_cs)
		master->set_cs = dws->set_cs;

	/* Basic HW init */
	FUNC13(dev, dws);

	if (dws->dma_ops && dws->dma_ops->dma_init) {
		ret = dws->dma_ops->dma_init(dws);
		if (ret) {
			FUNC4(dev, "DMA init failed\n");
			dws->dma_inited = 0;
		} else {
			master->can_dma = dws->dma_ops->can_dma;
		}
	}

	ret = FUNC5(dev, master);
	if (ret) {
		FUNC2(&master->dev, "problem registering spi master\n");
		goto err_dma_exit;
	}

	FUNC6(dws);
	return 0;

err_dma_exit:
	if (dws->dma_ops && dws->dma_ops->dma_exit)
		dws->dma_ops->dma_exit(dws);
	FUNC12(dws, 0);
	FUNC7(dws->irq, master);
err_free_master:
	FUNC10(master);
	return ret;
}