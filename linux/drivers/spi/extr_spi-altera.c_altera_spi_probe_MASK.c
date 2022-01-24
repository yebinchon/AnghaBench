#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int num_chipselect; int /*<<< orphan*/  set_cs; int /*<<< orphan*/  transfer_one; TYPE_1__ dev; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  mode_bits; int /*<<< orphan*/  bus_num; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct altera_spi {scalar_t__ irq; scalar_t__ base; scalar_t__ imr; } ;

/* Variables and functions */
 scalar_t__ ALTERA_SPI_CONTROL ; 
 scalar_t__ ALTERA_SPI_RXDATA ; 
 scalar_t__ ALTERA_SPI_STATUS ; 
 int ALTERA_SPI_STATUS_RRDY_MSK ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  SPI_CS_HIGH ; 
 int /*<<< orphan*/  altera_spi_irq ; 
 int /*<<< orphan*/  altera_spi_set_cs ; 
 int /*<<< orphan*/  altera_spi_txrx ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_master*) ; 
 int FUNC6 (TYPE_2__*,struct spi_master*) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 struct spi_master* FUNC9 (TYPE_2__*,int) ; 
 struct altera_spi* FUNC10 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct altera_spi *hw;
	struct spi_master *master;
	int err = -ENODEV;

	master = FUNC9(&pdev->dev, sizeof(struct altera_spi));
	if (!master)
		return err;

	/* setup the master state. */
	master->bus_num = pdev->id;
	master->num_chipselect = 16;
	master->mode_bits = SPI_CS_HIGH;
	master->bits_per_word_mask = FUNC2(1, 16);
	master->dev.of_node = pdev->dev.of_node;
	master->transfer_one = altera_spi_txrx;
	master->set_cs = altera_spi_set_cs;

	hw = FUNC10(master);

	/* find and map our resources */
	hw->base = FUNC4(pdev, 0);
	if (FUNC0(hw->base)) {
		err = FUNC1(hw->base);
		goto exit;
	}
	/* program defaults into the registers */
	hw->imr = 0;		/* disable spi interrupts */
	FUNC12(hw->imr, hw->base + ALTERA_SPI_CONTROL);
	FUNC12(0, hw->base + ALTERA_SPI_STATUS);	/* clear status reg */
	if (FUNC8(hw->base + ALTERA_SPI_STATUS) & ALTERA_SPI_STATUS_RRDY_MSK)
		FUNC8(hw->base + ALTERA_SPI_RXDATA);	/* flush rxdata */
	/* irq is optional */
	hw->irq = FUNC7(pdev, 0);
	if (hw->irq >= 0) {
		err = FUNC5(&pdev->dev, hw->irq, altera_spi_irq, 0,
				       pdev->name, master);
		if (err)
			goto exit;
	}

	err = FUNC6(&pdev->dev, master);
	if (err)
		goto exit;
	FUNC3(&pdev->dev, "base %p, irq %d\n", hw->base, hw->irq);

	return 0;
exit:
	FUNC11(master);
	return err;
}