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
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct qm_portal_config {int cpu; int irq; int /*<<< orphan*/  addr_virt_ce; int /*<<< orphan*/  addr_virt_ci; int /*<<< orphan*/  pools; int /*<<< orphan*/  channel; struct device* dev; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DPAA_PORTAL_CE ; 
 int /*<<< orphan*/  DPAA_PORTAL_CI ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  QBMAN_MEMREMAP_ATTR ; 
 int __qman_portals_probed ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct qm_portal_config* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qm_portal_config*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 
 int FUNC12 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portal_cpus ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 () ; 
 int /*<<< orphan*/  qman_lock ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 scalar_t__ FUNC20 () ; 
 int FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (struct resource*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct qm_portal_config *pcfg;
	struct resource *addr_phys[2];
	int irq, cpu, err, i;
	u32 val;

	err = FUNC18();
	if (!err)
		return -EPROBE_DEFER;
	if (err < 0) {
		FUNC4(&pdev->dev, "failing probe due to qman probe error\n");
		return -ENODEV;
	}

	pcfg = FUNC5(dev, sizeof(*pcfg), GFP_KERNEL);
	if (!pcfg) {
		__qman_portals_probed = -1;
		return -ENOMEM;
	}

	pcfg->dev = dev;

	addr_phys[0] = FUNC14(pdev, IORESOURCE_MEM,
					     DPAA_PORTAL_CE);
	if (!addr_phys[0]) {
		FUNC4(dev, "Can't get %pOF property 'reg::CE'\n", node);
		goto err_ioremap1;
	}

	addr_phys[1] = FUNC14(pdev, IORESOURCE_MEM,
					     DPAA_PORTAL_CI);
	if (!addr_phys[1]) {
		FUNC4(dev, "Can't get %pOF property 'reg::CI'\n", node);
		goto err_ioremap1;
	}

	err = FUNC12(node, "cell-index", &val);
	if (err) {
		FUNC4(dev, "Can't get %pOF property 'cell-index'\n", node);
		__qman_portals_probed = -1;
		return err;
	}
	pcfg->channel = val;
	pcfg->cpu = -1;
	irq = FUNC13(pdev, 0);
	if (irq <= 0)
		goto err_ioremap1;
	pcfg->irq = irq;

	pcfg->addr_virt_ce = FUNC10(addr_phys[0]->start,
					FUNC22(addr_phys[0]),
					QBMAN_MEMREMAP_ATTR);
	if (!pcfg->addr_virt_ce) {
		FUNC4(dev, "memremap::CE failed\n");
		goto err_ioremap1;
	}

	pcfg->addr_virt_ci = FUNC8(addr_phys[1]->start,
				FUNC22(addr_phys[1]));
	if (!pcfg->addr_virt_ci) {
		FUNC4(dev, "ioremap::CI failed\n");
		goto err_ioremap2;
	}

	pcfg->pools = FUNC16();

	FUNC23(&qman_lock);
	cpu = FUNC2(-1, &portal_cpus);
	if (cpu >= nr_cpu_ids) {
		__qman_portals_probed = 1;
		/* unassigned portal, skip init */
		FUNC24(&qman_lock);
		return 0;
	}

	FUNC3(cpu, &portal_cpus);
	FUNC24(&qman_lock);
	pcfg->cpu = cpu;

	if (FUNC6(dev, FUNC0(40))) {
		FUNC4(dev, "dma_set_mask() failed\n");
		goto err_portal_init;
	}

	if (!FUNC7(pcfg)) {
		FUNC4(dev, "portal init failed\n");
		goto err_portal_init;
	}

	/* clear irq affinity if assigned cpu is offline */
	if (!FUNC1(cpu))
		FUNC19(cpu);

	if (__qman_portals_probed == 1 && FUNC20()) {
		/*
		 * QMan wasn't reset prior to boot (Kexec for example)
		 * Empty all the frame queues so they are in reset state
		 */
		for (i = 0; i < FUNC15(); i++) {
			err =  FUNC21(i);
			if (err) {
				FUNC4(dev, "Failed to shutdown frame queue %d\n",
					i);
				goto err_portal_init;
			}
		}
		FUNC17();
	}

	return 0;

err_portal_init:
	FUNC9(pcfg->addr_virt_ci);
err_ioremap2:
	FUNC11(pcfg->addr_virt_ce);
err_ioremap1:
	__qman_portals_probed = -1;

	return -ENXIO;
}