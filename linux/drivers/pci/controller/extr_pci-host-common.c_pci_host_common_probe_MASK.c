#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct pci_host_bridge {int /*<<< orphan*/  bus; int /*<<< orphan*/  swizzle_irq; int /*<<< orphan*/  map_irq; int /*<<< orphan*/ * ops; int /*<<< orphan*/  busnr; struct pci_config_window* sysdata; TYPE_1__ dev; int /*<<< orphan*/  windows; } ;
struct pci_ecam_ops {int /*<<< orphan*/  pci_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;
struct pci_config_window {TYPE_2__ busr; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct pci_config_window*) ; 
 int /*<<< orphan*/  PCI_PROBE_ONLY ; 
 int /*<<< orphan*/  PCI_REASSIGN_ALL_BUS ; 
 int FUNC1 (struct pci_config_window*) ; 
 struct pci_host_bridge* FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 struct pci_config_window* FUNC3 (struct device*,struct list_head*,struct pci_ecam_ops*) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_irq_parse_and_map_pci ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_common_swizzle ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pci_host_bridge*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 

int FUNC11(struct platform_device *pdev,
			  struct pci_ecam_ops *ops)
{
	struct device *dev = &pdev->dev;
	struct pci_host_bridge *bridge;
	struct pci_config_window *cfg;
	struct list_head resources;
	int ret;

	bridge = FUNC2(dev, 0);
	if (!bridge)
		return -ENOMEM;

	FUNC5();

	/* Parse and map our Configuration Space windows */
	cfg = FUNC3(dev, &resources, ops);
	if (FUNC0(cfg))
		return FUNC1(cfg);

	/* Do not reassign resources if probe only */
	if (!FUNC8(PCI_PROBE_ONLY))
		FUNC6(PCI_REASSIGN_ALL_BUS);

	FUNC4(&resources, &bridge->windows);
	bridge->dev.parent = dev;
	bridge->sysdata = cfg;
	bridge->busnr = cfg->busr.start;
	bridge->ops = &ops->pci_ops;
	bridge->map_irq = of_irq_parse_and_map_pci;
	bridge->swizzle_irq = pci_common_swizzle;

	ret = FUNC9(bridge);
	if (ret < 0) {
		FUNC7(&resources);
		return ret;
	}

	FUNC10(pdev, bridge->bus);
	return 0;
}