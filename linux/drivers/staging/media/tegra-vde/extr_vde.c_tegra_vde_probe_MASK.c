#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; struct device* parent; int /*<<< orphan*/ * fops; int /*<<< orphan*/  minor; } ;
struct tegra_vde {int /*<<< orphan*/  iram_pool; scalar_t__ iram; TYPE_1__ miscdev; int /*<<< orphan*/  decode_completion; int /*<<< orphan*/  lock; int /*<<< orphan*/  map_lock; int /*<<< orphan*/  map_list; int /*<<< orphan*/  iram_lists_addr; void* rst_mc; void* rst; void* clk; void* frameid; void* vdma; void* ppb; void* tfe; void* mce; void* ppe; void* mbe; void* bsev; void* sxe; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 void* FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 struct tegra_vde* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_vde*) ; 
 void* FUNC9 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (struct device*,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct platform_device*,char*) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct tegra_vde*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  tegra_vde_fops ; 
 int /*<<< orphan*/  FUNC26 (struct tegra_vde*) ; 
 int FUNC27 (struct tegra_vde*) ; 
 int /*<<< orphan*/  tegra_vde_isr ; 
 int FUNC28 (struct device*) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *regs;
	struct tegra_vde *vde;
	int irq, err;

	vde = FUNC7(dev, sizeof(*vde), GFP_KERNEL);
	if (!vde)
		return -ENOMEM;

	FUNC21(pdev, vde);

	regs = FUNC20(pdev, IORESOURCE_MEM, "sxe");
	if (!regs)
		return -ENODEV;

	vde->sxe = FUNC6(dev, regs);
	if (FUNC1(vde->sxe))
		return FUNC2(vde->sxe);

	regs = FUNC20(pdev, IORESOURCE_MEM, "bsev");
	if (!regs)
		return -ENODEV;

	vde->bsev = FUNC6(dev, regs);
	if (FUNC1(vde->bsev))
		return FUNC2(vde->bsev);

	regs = FUNC20(pdev, IORESOURCE_MEM, "mbe");
	if (!regs)
		return -ENODEV;

	vde->mbe = FUNC6(dev, regs);
	if (FUNC1(vde->mbe))
		return FUNC2(vde->mbe);

	regs = FUNC20(pdev, IORESOURCE_MEM, "ppe");
	if (!regs)
		return -ENODEV;

	vde->ppe = FUNC6(dev, regs);
	if (FUNC1(vde->ppe))
		return FUNC2(vde->ppe);

	regs = FUNC20(pdev, IORESOURCE_MEM, "mce");
	if (!regs)
		return -ENODEV;

	vde->mce = FUNC6(dev, regs);
	if (FUNC1(vde->mce))
		return FUNC2(vde->mce);

	regs = FUNC20(pdev, IORESOURCE_MEM, "tfe");
	if (!regs)
		return -ENODEV;

	vde->tfe = FUNC6(dev, regs);
	if (FUNC1(vde->tfe))
		return FUNC2(vde->tfe);

	regs = FUNC20(pdev, IORESOURCE_MEM, "ppb");
	if (!regs)
		return -ENODEV;

	vde->ppb = FUNC6(dev, regs);
	if (FUNC1(vde->ppb))
		return FUNC2(vde->ppb);

	regs = FUNC20(pdev, IORESOURCE_MEM, "vdma");
	if (!regs)
		return -ENODEV;

	vde->vdma = FUNC6(dev, regs);
	if (FUNC1(vde->vdma))
		return FUNC2(vde->vdma);

	regs = FUNC20(pdev, IORESOURCE_MEM, "frameid");
	if (!regs)
		return -ENODEV;

	vde->frameid = FUNC6(dev, regs);
	if (FUNC1(vde->frameid))
		return FUNC2(vde->frameid);

	vde->clk = FUNC5(dev, NULL);
	if (FUNC1(vde->clk)) {
		err = FUNC2(vde->clk);
		FUNC3(dev, "Could not get VDE clk %d\n", err);
		return err;
	}

	vde->rst = FUNC9(dev, NULL);
	if (FUNC1(vde->rst)) {
		err = FUNC2(vde->rst);
		FUNC3(dev, "Could not get VDE reset %d\n", err);
		return err;
	}

	vde->rst_mc = FUNC10(dev, "mc");
	if (FUNC1(vde->rst_mc)) {
		err = FUNC2(vde->rst_mc);
		FUNC3(dev, "Could not get MC reset %d\n", err);
		return err;
	}

	irq = FUNC19(pdev, "sync-token");
	if (irq < 0)
		return irq;

	err = FUNC8(dev, irq, tegra_vde_isr, 0,
			       FUNC4(dev), vde);
	if (err) {
		FUNC3(dev, "Could not request IRQ %d\n", err);
		return err;
	}

	vde->iram_pool = FUNC18(dev->of_node, "iram", 0);
	if (!vde->iram_pool) {
		FUNC3(dev, "Could not get IRAM pool\n");
		return -EPROBE_DEFER;
	}

	vde->iram = FUNC11(vde->iram_pool,
				       FUNC13(vde->iram_pool),
				       &vde->iram_lists_addr);
	if (!vde->iram) {
		FUNC3(dev, "Could not reserve IRAM\n");
		return -ENOMEM;
	}

	FUNC0(&vde->map_list);
	FUNC17(&vde->map_lock);
	FUNC17(&vde->lock);
	FUNC14(&vde->decode_completion);

	vde->miscdev.minor = MISC_DYNAMIC_MINOR;
	vde->miscdev.name = "tegra_vde";
	vde->miscdev.fops = &tegra_vde_fops;
	vde->miscdev.parent = dev;

	err = FUNC27(vde);
	if (err) {
		FUNC3(dev, "Failed to initialize IOMMU: %d\n", err);
		goto err_gen_free;
	}

	err = FUNC16(&vde->miscdev);
	if (err) {
		FUNC3(dev, "Failed to register misc device: %d\n", err);
		goto err_deinit_iommu;
	}

	FUNC22(dev);
	FUNC25(dev);
	FUNC24(dev, 300);

	if (!FUNC23(dev)) {
		err = FUNC28(dev);
		if (err)
			goto err_misc_unreg;
	}

	return 0;

err_misc_unreg:
	FUNC15(&vde->miscdev);

err_deinit_iommu:
	FUNC26(vde);

err_gen_free:
	FUNC12(vde->iram_pool, (unsigned long)vde->iram,
		      FUNC13(vde->iram_pool));

	return err;
}