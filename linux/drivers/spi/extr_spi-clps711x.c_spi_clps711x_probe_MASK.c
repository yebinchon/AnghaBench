#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int use_gpio_descriptors; int bus_num; int mode_bits; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  prepare_message; TYPE_1__ dev; int /*<<< orphan*/  bits_per_word_mask; } ;
struct spi_clps711x_data {int /*<<< orphan*/  syncio; int /*<<< orphan*/  syscon; int /*<<< orphan*/  spi_clk; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int SPI_CPHA ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  SYSCON3_ADCCON ; 
 int /*<<< orphan*/  SYSCON_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_master*) ; 
 int FUNC7 (TYPE_2__*,struct spi_master*) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  spi_clps711x_isr ; 
 int /*<<< orphan*/  spi_clps711x_prepare_message ; 
 int /*<<< orphan*/  spi_clps711x_transfer_one ; 
 struct spi_clps711x_data* FUNC12 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct spi_clps711x_data *hw;
	struct spi_master *master;
	int irq, ret;

	irq = FUNC8(pdev, 0);
	if (irq < 0)
		return irq;

	master = FUNC11(&pdev->dev, sizeof(*hw));
	if (!master)
		return -ENOMEM;

	master->use_gpio_descriptors = true;
	master->bus_num = -1;
	master->mode_bits = SPI_CPHA | SPI_CS_HIGH;
	master->bits_per_word_mask =  FUNC2(1, 8);
	master->dev.of_node = pdev->dev.of_node;
	master->prepare_message = spi_clps711x_prepare_message;
	master->transfer_one = spi_clps711x_transfer_one;

	hw = FUNC12(master);

	hw->spi_clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(hw->spi_clk)) {
		ret = FUNC1(hw->spi_clk);
		goto err_out;
	}

	hw->syscon =
		FUNC14("cirrus,ep7209-syscon3");
	if (FUNC0(hw->syscon)) {
		ret = FUNC1(hw->syscon);
		goto err_out;
	}

	hw->syncio = FUNC5(pdev, 0);
	if (FUNC0(hw->syncio)) {
		ret = FUNC1(hw->syncio);
		goto err_out;
	}

	/* Disable extended mode due hardware problems */
	FUNC10(hw->syscon, SYSCON_OFFSET, SYSCON3_ADCCON, 0);

	/* Clear possible pending interrupt */
	FUNC9(hw->syncio);

	ret = FUNC6(&pdev->dev, irq, spi_clps711x_isr, 0,
			       FUNC3(&pdev->dev), master);
	if (ret)
		goto err_out;

	ret = FUNC7(&pdev->dev, master);
	if (!ret)
		return 0;

err_out:
	FUNC13(master);

	return ret;
}