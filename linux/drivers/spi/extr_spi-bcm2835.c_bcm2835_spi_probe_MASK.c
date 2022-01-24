#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct spi_controller {int use_gpio_descriptors; TYPE_1__ dev; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  handle_err; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  setup; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  mode_bits; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct bcm2835_spi {int irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BCM2835_SPI_CS ; 
 int BCM2835_SPI_CS_CLEAR_RX ; 
 int BCM2835_SPI_CS_CLEAR_TX ; 
 int /*<<< orphan*/  BCM2835_SPI_MODE_BITS ; 
 int /*<<< orphan*/  BCM2835_SPI_NUM_CS ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_controller*,TYPE_2__*,struct bcm2835_spi*) ; 
 int /*<<< orphan*/  bcm2835_spi_handle_err ; 
 int /*<<< orphan*/  bcm2835_spi_interrupt ; 
 int /*<<< orphan*/  bcm2835_spi_prepare_message ; 
 int /*<<< orphan*/  bcm2835_spi_setup ; 
 int /*<<< orphan*/  bcm2835_spi_transfer_one ; 
 int /*<<< orphan*/  FUNC6 (struct bcm2835_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_controller*) ; 
 int FUNC14 (TYPE_2__*,struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct spi_controller*) ; 
 struct spi_controller* FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct bcm2835_spi* FUNC19 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC20 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct spi_controller *ctlr;
	struct bcm2835_spi *bs;
	int err;

	ctlr = FUNC18(&pdev->dev, FUNC0(sizeof(*bs),
						  FUNC15()));
	if (!ctlr)
		return -ENOMEM;

	FUNC17(pdev, ctlr);

	ctlr->use_gpio_descriptors = true;
	ctlr->mode_bits = BCM2835_SPI_MODE_BITS;
	ctlr->bits_per_word_mask = FUNC3(8);
	ctlr->num_chipselect = BCM2835_SPI_NUM_CS;
	ctlr->setup = bcm2835_spi_setup;
	ctlr->transfer_one = bcm2835_spi_transfer_one;
	ctlr->handle_err = bcm2835_spi_handle_err;
	ctlr->prepare_message = bcm2835_spi_prepare_message;
	ctlr->dev.of_node = pdev->dev.of_node;

	bs = FUNC19(ctlr);

	bs->regs = FUNC12(pdev, 0);
	if (FUNC1(bs->regs)) {
		err = FUNC2(bs->regs);
		goto out_controller_put;
	}

	bs->clk = FUNC11(&pdev->dev, NULL);
	if (FUNC1(bs->clk)) {
		err = FUNC2(bs->clk);
		FUNC9(&pdev->dev, "could not get clk: %d\n", err);
		goto out_controller_put;
	}

	bs->irq = FUNC16(pdev, 0);
	if (bs->irq <= 0) {
		err = bs->irq ? bs->irq : -ENODEV;
		goto out_controller_put;
	}

	FUNC8(bs->clk);

	FUNC5(ctlr, &pdev->dev, bs);

	/* initialise the hardware with the default polarities */
	FUNC6(bs, BCM2835_SPI_CS,
		   BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);

	err = FUNC13(&pdev->dev, bs->irq, bcm2835_spi_interrupt, 0,
			       FUNC10(&pdev->dev), ctlr);
	if (err) {
		FUNC9(&pdev->dev, "could not request IRQ: %d\n", err);
		goto out_clk_disable;
	}

	err = FUNC14(&pdev->dev, ctlr);
	if (err) {
		FUNC9(&pdev->dev, "could not register SPI controller: %d\n",
			err);
		goto out_clk_disable;
	}

	FUNC4(bs, FUNC10(&pdev->dev));

	return 0;

out_clk_disable:
	FUNC7(bs->clk);
out_controller_put:
	FUNC20(ctlr);
	return err;
}