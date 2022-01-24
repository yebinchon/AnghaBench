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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int mode_bits; int auto_runtime_pm; unsigned int num_chipselect; void* max_speed_hz; void* min_speed_hz; int /*<<< orphan*/  max_message_size; int /*<<< orphan*/  transfer_one_message; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; int /*<<< orphan*/  bits_per_word_mask; TYPE_1__ dev; } ;
struct resource {int dummy; } ;
struct fsl_espi {int spibrg; int /*<<< orphan*/  reg_base; int /*<<< orphan*/  done; struct device* dev; int /*<<< orphan*/  lock; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOSUSPEND_TIMEOUT ; 
 void* FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LOOP ; 
 int SPI_LSB_FIRST ; 
 int SPI_RX_DUAL ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct resource*) ; 
 int FUNC8 (struct device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct fsl_espi*) ; 
 int FUNC9 (struct device*,struct spi_master*) ; 
 int /*<<< orphan*/  fsl_espi_cleanup ; 
 int /*<<< orphan*/  fsl_espi_do_one_msg ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int) ; 
 int /*<<< orphan*/  fsl_espi_irq ; 
 int /*<<< orphan*/  fsl_espi_max_message_size ; 
 int /*<<< orphan*/  fsl_espi_setup ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 struct spi_master* FUNC23 (struct device*,int) ; 
 struct fsl_espi* FUNC24 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC25 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC27(struct device *dev, struct resource *mem,
			  unsigned int irq, unsigned int num_cs)
{
	struct spi_master *master;
	struct fsl_espi *espi;
	int ret;

	master = FUNC23(dev, sizeof(struct fsl_espi));
	if (!master)
		return -ENOMEM;

	FUNC6(dev, master);

	master->mode_bits = SPI_RX_DUAL | SPI_CPOL | SPI_CPHA | SPI_CS_HIGH |
			    SPI_LSB_FIRST | SPI_LOOP;
	master->dev.of_node = dev->of_node;
	master->bits_per_word_mask = FUNC3(4, 16);
	master->setup = fsl_espi_setup;
	master->cleanup = fsl_espi_cleanup;
	master->transfer_one_message = fsl_espi_do_one_msg;
	master->auto_runtime_pm = true;
	master->max_message_size = fsl_espi_max_message_size;
	master->num_chipselect = num_cs;

	espi = FUNC24(master);
	FUNC26(&espi->lock);

	espi->dev = dev;
	espi->spibrg = FUNC11();
	if (espi->spibrg == -1) {
		FUNC4(dev, "Can't get sys frequency!\n");
		ret = -EINVAL;
		goto err_probe;
	}
	/* determined by clock divider fields DIV16/PM in register SPMODEx */
	master->min_speed_hz = FUNC0(espi->spibrg, 4 * 16 * 16);
	master->max_speed_hz = FUNC0(espi->spibrg, 4);

	FUNC12(&espi->done);

	espi->reg_base = FUNC7(dev, mem);
	if (FUNC1(espi->reg_base)) {
		ret = FUNC2(espi->reg_base);
		goto err_probe;
	}

	/* Register for SPI Interrupt */
	ret = FUNC8(dev, irq, fsl_espi_irq, 0, "fsl_espi", espi);
	if (ret)
		goto err_probe;

	FUNC10(dev, true);

	FUNC20(dev, AUTOSUSPEND_TIMEOUT);
	FUNC22(dev);
	FUNC19(dev);
	FUNC14(dev);
	FUNC15(dev);

	ret = FUNC9(dev, master);
	if (ret < 0)
		goto err_pm;

	FUNC5(dev, "at 0x%p (irq = %u)\n", espi->reg_base, irq);

	FUNC16(dev);
	FUNC17(dev);

	return 0;

err_pm:
	FUNC18(dev);
	FUNC13(dev);
	FUNC21(dev);
err_probe:
	FUNC25(master);
	return ret;
}