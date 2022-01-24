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
struct uio_pruss_pdata {scalar_t__ sram_pool; int /*<<< orphan*/  pintc_base; } ;
struct uio_pruss_dev {unsigned long sram_vaddr; struct uio_pruss_dev* info; int /*<<< orphan*/  pruss_clk; scalar_t__ sram_pool; scalar_t__ ddr_paddr; int /*<<< orphan*/  ddr_vaddr; int /*<<< orphan*/  prussio_vaddr; struct uio_pruss_dev* name; struct uio_pruss_dev* priv; int /*<<< orphan*/  handler; scalar_t__ hostirq_start; scalar_t__ irq; int /*<<< orphan*/  version; TYPE_1__* mem; scalar_t__ sram_paddr; int /*<<< orphan*/  pintc_base; } ;
struct uio_info {unsigned long sram_vaddr; struct uio_info* info; int /*<<< orphan*/  pruss_clk; scalar_t__ sram_pool; scalar_t__ ddr_paddr; int /*<<< orphan*/  ddr_vaddr; int /*<<< orphan*/  prussio_vaddr; struct uio_info* name; struct uio_info* priv; int /*<<< orphan*/  handler; scalar_t__ hostirq_start; scalar_t__ irq; int /*<<< orphan*/  version; TYPE_1__* mem; scalar_t__ sram_paddr; int /*<<< orphan*/  pintc_base; } ;
struct resource {scalar_t__ start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {void* memtype; void* size; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_VERSION ; 
 int EIO ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_PRUSS_EVT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* UIO_MEM_PHYS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 struct uio_pruss_pdata* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,void*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 void* extram_pool_sz ; 
 scalar_t__ FUNC10 (scalar_t__,void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct uio_pruss_dev* FUNC14 (int,char*,int) ; 
 struct uio_pruss_dev* FUNC15 (int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct uio_pruss_dev*) ; 
 struct uio_pruss_dev* FUNC17 (int,int) ; 
 scalar_t__ FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct uio_pruss_dev*) ; 
 int /*<<< orphan*/  pruss_handler ; 
 void* FUNC21 (struct resource*) ; 
 void* sram_pool_sz ; 
 int FUNC22 (struct device*,struct uio_pruss_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct uio_pruss_dev*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct uio_info *p;
	struct uio_pruss_dev *gdev;
	struct resource *regs_prussio;
	struct device *dev = &pdev->dev;
	int ret, cnt, i, len;
	struct uio_pruss_pdata *pdata = FUNC7(dev);

	gdev = FUNC17(sizeof(struct uio_pruss_dev), GFP_KERNEL);
	if (!gdev)
		return -ENOMEM;

	gdev->info = FUNC15(MAX_PRUSS_EVT, sizeof(*p), GFP_KERNEL);
	if (!gdev->info) {
		ret = -ENOMEM;
		goto err_free_gdev;
	}

	/* Power on PRU in case its not done as part of boot-loader */
	gdev->pruss_clk = FUNC4(dev, "pruss");
	if (FUNC0(gdev->pruss_clk)) {
		FUNC6(dev, "Failed to get clock\n");
		ret = FUNC1(gdev->pruss_clk);
		goto err_free_info;
	}

	ret = FUNC3(gdev->pruss_clk);
	if (ret) {
		FUNC6(dev, "Failed to enable clock\n");
		goto err_clk_put;
	}

	regs_prussio = FUNC19(pdev, IORESOURCE_MEM, 0);
	if (!regs_prussio) {
		FUNC6(dev, "No PRUSS I/O resource specified\n");
		ret = -EIO;
		goto err_clk_disable;
	}

	if (!regs_prussio->start) {
		FUNC6(dev, "Invalid memory resource\n");
		ret = -EIO;
		goto err_clk_disable;
	}

	if (pdata->sram_pool) {
		gdev->sram_pool = pdata->sram_pool;
		gdev->sram_vaddr =
			(unsigned long)FUNC10(gdev->sram_pool,
					sram_pool_sz, &gdev->sram_paddr);
		if (!gdev->sram_vaddr) {
			FUNC6(dev, "Could not allocate SRAM pool\n");
			ret = -ENOMEM;
			goto err_clk_disable;
		}
	}

	gdev->ddr_vaddr = FUNC8(dev, extram_pool_sz,
				&(gdev->ddr_paddr), GFP_KERNEL | GFP_DMA);
	if (!gdev->ddr_vaddr) {
		FUNC6(dev, "Could not allocate external memory\n");
		ret = -ENOMEM;
		goto err_free_sram;
	}

	len = FUNC21(regs_prussio);
	gdev->prussio_vaddr = FUNC12(regs_prussio->start, len);
	if (!gdev->prussio_vaddr) {
		FUNC6(dev, "Can't remap PRUSS I/O  address range\n");
		ret = -ENOMEM;
		goto err_free_ddr_vaddr;
	}

	gdev->pintc_base = pdata->pintc_base;
	gdev->hostirq_start = FUNC18(pdev, 0);

	for (cnt = 0, p = gdev->info; cnt < MAX_PRUSS_EVT; cnt++, p++) {
		p->mem[0].addr = regs_prussio->start;
		p->mem[0].size = FUNC21(regs_prussio);
		p->mem[0].memtype = UIO_MEM_PHYS;

		p->mem[1].addr = gdev->sram_paddr;
		p->mem[1].size = sram_pool_sz;
		p->mem[1].memtype = UIO_MEM_PHYS;

		p->mem[2].addr = gdev->ddr_paddr;
		p->mem[2].size = extram_pool_sz;
		p->mem[2].memtype = UIO_MEM_PHYS;

		p->name = FUNC14(GFP_KERNEL, "pruss_evt%d", cnt);
		p->version = DRV_VERSION;

		/* Register PRUSS IRQ lines */
		p->irq = gdev->hostirq_start + cnt;
		p->handler = pruss_handler;
		p->priv = gdev;

		ret = FUNC22(dev, p);
		if (ret < 0) {
			FUNC16(p->name);
			goto err_unloop;
		}
	}

	FUNC20(pdev, gdev);
	return 0;

err_unloop:
	for (i = 0, p = gdev->info; i < cnt; i++, p++) {
		FUNC23(p);
		FUNC16(p->name);
	}
	FUNC13(gdev->prussio_vaddr);
err_free_ddr_vaddr:
	FUNC9(dev, extram_pool_sz, gdev->ddr_vaddr,
			  gdev->ddr_paddr);
err_free_sram:
	if (pdata->sram_pool)
		FUNC11(gdev->sram_pool, gdev->sram_vaddr, sram_pool_sz);
err_clk_disable:
	FUNC2(gdev->pruss_clk);
err_clk_put:
	FUNC5(gdev->pruss_clk);
err_free_info:
	FUNC16(gdev->info);
err_free_gdev:
	FUNC16(gdev);

	return ret;
}