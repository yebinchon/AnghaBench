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
typedef  int u32 ;
struct spi_st {scalar_t__ clk; scalar_t__ base; int /*<<< orphan*/  done; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct spi_master {int bits_per_word_mask; int auto_runtime_pm; int /*<<< orphan*/  bus_num; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; int /*<<< orphan*/  mode_bits; TYPE_1__ dev; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  MODEBITS ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
 scalar_t__ SSC_CTL ; 
 int SSC_CTL_MS ; 
 int SSC_CTL_SR ; 
 scalar_t__ SSC_I2C ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 scalar_t__ FUNC6 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_st*) ; 
 int FUNC9 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int FUNC15 (scalar_t__) ; 
 int FUNC16 (scalar_t__) ; 
 struct spi_master* FUNC17 (TYPE_2__*,int) ; 
 struct spi_st* FUNC18 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC19 (struct spi_master*) ; 
 int /*<<< orphan*/  spi_st_cleanup ; 
 int /*<<< orphan*/  spi_st_irq ; 
 int /*<<< orphan*/  spi_st_setup ; 
 int /*<<< orphan*/  spi_st_transfer_one ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct spi_master *master;
	struct spi_st *spi_st;
	int irq, ret = 0;
	u32 var;

	master = FUNC17(&pdev->dev, sizeof(*spi_st));
	if (!master)
		return -ENOMEM;

	master->dev.of_node		= np;
	master->mode_bits		= MODEBITS;
	master->setup			= spi_st_setup;
	master->cleanup			= spi_st_cleanup;
	master->transfer_one		= spi_st_transfer_one;
	master->bits_per_word_mask	= FUNC2(8) | FUNC2(16);
	master->auto_runtime_pm		= true;
	master->bus_num			= pdev->id;
	spi_st				= FUNC18(master);

	spi_st->clk = FUNC6(&pdev->dev, "ssc");
	if (FUNC0(spi_st->clk)) {
		FUNC5(&pdev->dev, "Unable to request clock\n");
		ret = FUNC1(spi_st->clk);
		goto put_master;
	}

	ret = FUNC4(spi_st->clk);
	if (ret)
		goto put_master;

	FUNC10(&spi_st->done);

	/* Get resources */
	spi_st->base = FUNC7(pdev, 0);
	if (FUNC0(spi_st->base)) {
		ret = FUNC1(spi_st->base);
		goto clk_disable;
	}

	/* Disable I2C and Reset SSC */
	FUNC21(0x0, spi_st->base + SSC_I2C);
	var = FUNC16(spi_st->base + SSC_CTL);
	var |= SSC_CTL_SR;
	FUNC21(var, spi_st->base + SSC_CTL);

	FUNC20(1);
	var = FUNC15(spi_st->base + SSC_CTL);
	var &= ~SSC_CTL_SR;
	FUNC21(var, spi_st->base + SSC_CTL);

	/* Set SSC into slave mode before reconfiguring PIO pins */
	var = FUNC15(spi_st->base + SSC_CTL);
	var &= ~SSC_CTL_MS;
	FUNC21(var, spi_st->base + SSC_CTL);

	irq = FUNC11(np, 0);
	if (!irq) {
		FUNC5(&pdev->dev, "IRQ missing or invalid\n");
		ret = -EINVAL;
		goto clk_disable;
	}

	ret = FUNC8(&pdev->dev, irq, spi_st_irq, 0,
			       pdev->name, spi_st);
	if (ret) {
		FUNC5(&pdev->dev, "Failed to request irq %d\n", irq);
		goto clk_disable;
	}

	/* by default the device is on */
	FUNC14(&pdev->dev);
	FUNC13(&pdev->dev);

	FUNC12(pdev, master);

	ret = FUNC9(&pdev->dev, master);
	if (ret) {
		FUNC5(&pdev->dev, "Failed to register master\n");
		goto clk_disable;
	}

	return 0;

clk_disable:
	FUNC3(spi_st->clk);
put_master:
	FUNC19(master);
	return ret;
}