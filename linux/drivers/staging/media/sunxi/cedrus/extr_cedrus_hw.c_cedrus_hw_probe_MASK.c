#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct cedrus_variant {int quirks; int /*<<< orphan*/  mod_rate; int /*<<< orphan*/  capabilities; } ;
struct cedrus_dev {TYPE_1__* dev; void* ahb_clk; void* mod_clk; void* ram_clk; void* rstc; void* base; int /*<<< orphan*/  pdev; int /*<<< orphan*/  capabilities; } ;
struct TYPE_12__ {int /*<<< orphan*/  dma_pfn_offset; } ;

/* Variables and functions */
 int CEDRUS_QUIRK_NO_DMA_OFFSET ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  PHYS_PFN_OFFSET ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  cedrus_irq ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 void* FUNC7 (TYPE_1__*,char*) ; 
 void* FUNC8 (TYPE_1__*,struct resource*) ; 
 int FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cedrus_dev*) ; 
 void* FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct cedrus_variant* FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (void*) ; 
 int FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

int FUNC19(struct cedrus_dev *dev)
{
	const struct cedrus_variant *variant;
	struct resource *res;
	int irq_dec;
	int ret;

	variant = FUNC11(dev->dev);
	if (!variant)
		return -EINVAL;

	dev->capabilities = variant->capabilities;

	irq_dec = FUNC14(dev->pdev, 0);
	if (irq_dec <= 0)
		return irq_dec;
	ret = FUNC9(dev->dev, irq_dec, cedrus_irq,
			       0, FUNC6(dev->dev), dev);
	if (ret) {
		FUNC5(dev->dev, "Failed to request IRQ\n");

		return ret;
	}

	/*
	 * The VPU is only able to handle bus addresses so we have to subtract
	 * the RAM offset to the physcal addresses.
	 *
	 * This information will eventually be obtained from device-tree.
	 */

#ifdef PHYS_PFN_OFFSET
	if (!(variant->quirks & CEDRUS_QUIRK_NO_DMA_OFFSET))
		dev->dev->dma_pfn_offset = PHYS_PFN_OFFSET;
#endif

	ret = FUNC12(dev->dev);
	if (ret && ret != -ENODEV) {
		FUNC5(dev->dev, "Failed to reserve memory\n");

		return ret;
	}

	ret = FUNC17(dev->dev);
	if (ret) {
		FUNC5(dev->dev, "Failed to claim SRAM\n");

		goto err_mem;
	}

	dev->ahb_clk = FUNC7(dev->dev, "ahb");
	if (FUNC0(dev->ahb_clk)) {
		FUNC5(dev->dev, "Failed to get AHB clock\n");

		ret = FUNC1(dev->ahb_clk);
		goto err_sram;
	}

	dev->mod_clk = FUNC7(dev->dev, "mod");
	if (FUNC0(dev->mod_clk)) {
		FUNC5(dev->dev, "Failed to get MOD clock\n");

		ret = FUNC1(dev->mod_clk);
		goto err_sram;
	}

	dev->ram_clk = FUNC7(dev->dev, "ram");
	if (FUNC0(dev->ram_clk)) {
		FUNC5(dev->dev, "Failed to get RAM clock\n");

		ret = FUNC1(dev->ram_clk);
		goto err_sram;
	}

	dev->rstc = FUNC10(dev->dev, NULL);
	if (FUNC0(dev->rstc)) {
		FUNC5(dev->dev, "Failed to get reset control\n");

		ret = FUNC1(dev->rstc);
		goto err_sram;
	}

	res = FUNC15(dev->pdev, IORESOURCE_MEM, 0);
	dev->base = FUNC8(dev->dev, res);
	if (FUNC0(dev->base)) {
		FUNC5(dev->dev, "Failed to map registers\n");

		ret = FUNC1(dev->base);
		goto err_sram;
	}

	ret = FUNC4(dev->mod_clk, variant->mod_rate);
	if (ret) {
		FUNC5(dev->dev, "Failed to set clock rate\n");

		goto err_sram;
	}

	ret = FUNC3(dev->ahb_clk);
	if (ret) {
		FUNC5(dev->dev, "Failed to enable AHB clock\n");

		goto err_sram;
	}

	ret = FUNC3(dev->mod_clk);
	if (ret) {
		FUNC5(dev->dev, "Failed to enable MOD clock\n");

		goto err_ahb_clk;
	}

	ret = FUNC3(dev->ram_clk);
	if (ret) {
		FUNC5(dev->dev, "Failed to enable RAM clock\n");

		goto err_mod_clk;
	}

	ret = FUNC16(dev->rstc);
	if (ret) {
		FUNC5(dev->dev, "Failed to apply reset\n");

		goto err_ram_clk;
	}

	return 0;

err_ram_clk:
	FUNC2(dev->ram_clk);
err_mod_clk:
	FUNC2(dev->mod_clk);
err_ahb_clk:
	FUNC2(dev->ahb_clk);
err_sram:
	FUNC18(dev->dev);
err_mem:
	FUNC13(dev->dev);

	return ret;
}