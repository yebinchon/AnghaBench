#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct bm_portal_config {int cpu; int irq; int /*<<< orphan*/  addr_virt_ce; int /*<<< orphan*/  addr_virt_ci; struct device* dev; } ;

/* Variables and functions */
 int BM_POOL_MAX ; 
 int /*<<< orphan*/  DPAA_PORTAL_CE ; 
 int /*<<< orphan*/  DPAA_PORTAL_CI ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  QBMAN_MEMREMAP_ATTR ; 
 int __bman_portals_probed ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  bman_lock ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 struct bm_portal_config* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bm_portal_config*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portal_cpus ; 
 int /*<<< orphan*/  FUNC17 (struct resource*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct bm_portal_config *pcfg;
	struct resource *addr_phys[2];
	int irq, cpu, err, i;

	err = FUNC2();
	if (!err)
		return -EPROBE_DEFER;
	if (err < 0) {
		FUNC8(&pdev->dev, "failing probe due to bman probe error\n");
		return -ENODEV;
	}

	pcfg = FUNC9(dev, sizeof(*pcfg), GFP_KERNEL);
	if (!pcfg) {
		__bman_portals_probed = -1;
		return -ENOMEM;
	}

	pcfg->dev = dev;

	addr_phys[0] = FUNC16(pdev, IORESOURCE_MEM,
					     DPAA_PORTAL_CE);
	if (!addr_phys[0]) {
		FUNC8(dev, "Can't get %pOF property 'reg::CE'\n", node);
		goto err_ioremap1;
	}

	addr_phys[1] = FUNC16(pdev, IORESOURCE_MEM,
					     DPAA_PORTAL_CI);
	if (!addr_phys[1]) {
		FUNC8(dev, "Can't get %pOF property 'reg::CI'\n", node);
		goto err_ioremap1;
	}

	pcfg->cpu = -1;

	irq = FUNC15(pdev, 0);
	if (irq <= 0)
		goto err_ioremap1;
	pcfg->irq = irq;

	pcfg->addr_virt_ce = FUNC13(addr_phys[0]->start,
					FUNC17(addr_phys[0]),
					QBMAN_MEMREMAP_ATTR);
	if (!pcfg->addr_virt_ce) {
		FUNC8(dev, "memremap::CE failed\n");
		goto err_ioremap1;
	}

	pcfg->addr_virt_ci = FUNC11(addr_phys[1]->start,
					FUNC17(addr_phys[1]));
	if (!pcfg->addr_virt_ci) {
		FUNC8(dev, "ioremap::CI failed\n");
		goto err_ioremap2;
	}

	FUNC18(&bman_lock);
	cpu = FUNC6(-1, &portal_cpus);
	if (cpu >= nr_cpu_ids) {
		__bman_portals_probed = 1;
		/* unassigned portal, skip init */
		FUNC19(&bman_lock);
		return 0;
	}

	FUNC7(cpu, &portal_cpus);
	FUNC19(&bman_lock);
	pcfg->cpu = cpu;

	if (!FUNC10(pcfg)) {
		FUNC8(dev, "portal init failed\n");
		goto err_portal_init;
	}

	/* clear irq affinity if assigned cpu is offline */
	if (!FUNC5(cpu))
		FUNC3(cpu);

	if (__bman_portals_probed == 1 && FUNC4()) {
		/*
		 * BMan wasn't reset prior to boot (Kexec for example)
		 * Empty all the buffer pools so they are in reset state
		 */
		for (i = 0; i < BM_POOL_MAX; i++) {
			err =  FUNC0(i);
			if (err) {
				FUNC8(dev, "Failed to shutdown bpool %d\n",
					i);
				goto err_portal_init;
			}
		}
		FUNC1();
	}

	return 0;

err_portal_init:
	FUNC12(pcfg->addr_virt_ci);
err_ioremap2:
	FUNC14(pcfg->addr_virt_ce);
err_ioremap1:
	 __bman_portals_probed = -1;

	return -ENXIO;
}