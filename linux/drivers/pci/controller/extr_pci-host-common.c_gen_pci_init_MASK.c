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
struct resource {int dummy; } ;
struct pci_ecam_ops {int dummy; } ;
struct pci_config_window {int dummy; } ;
struct list_head {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 struct pci_config_window* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct pci_config_window*) ; 
 int FUNC2 (struct pci_config_window*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct pci_config_window*) ; 
 int /*<<< orphan*/  gen_pci_unmap_cfg ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 struct pci_config_window* FUNC6 (struct device*,struct resource*,struct resource*,struct pci_ecam_ops*) ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*) ; 
 int FUNC8 (struct device*,struct list_head*,struct resource**) ; 

__attribute__((used)) static struct pci_config_window *FUNC9(struct device *dev,
		struct list_head *resources, struct pci_ecam_ops *ops)
{
	int err;
	struct resource cfgres;
	struct resource *bus_range = NULL;
	struct pci_config_window *cfg;

	/* Parse our PCI ranges and request their resources */
	err = FUNC8(dev, resources, &bus_range);
	if (err)
		return FUNC0(err);

	err = FUNC5(dev->of_node, 0, &cfgres);
	if (err) {
		FUNC3(dev, "missing \"reg\" property\n");
		goto err_out;
	}

	cfg = FUNC6(dev, &cfgres, bus_range, ops);
	if (FUNC1(cfg)) {
		err = FUNC2(cfg);
		goto err_out;
	}

	err = FUNC4(dev, gen_pci_unmap_cfg, cfg);
	if (err) {
		goto err_out;
	}
	return cfg;

err_out:
	FUNC7(resources);
	return FUNC0(err);
}