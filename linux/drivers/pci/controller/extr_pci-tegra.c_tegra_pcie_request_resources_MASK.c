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
struct TYPE_4__ {int /*<<< orphan*/  start; } ;
struct TYPE_3__ {int /*<<< orphan*/  mem; int /*<<< orphan*/  io; } ;
struct tegra_pcie {TYPE_2__ io; int /*<<< orphan*/  pio; int /*<<< orphan*/  busn; TYPE_1__ offset; int /*<<< orphan*/  prefetch; int /*<<< orphan*/  mem; struct device* dev; } ;
struct list_head {int dummy; } ;
struct pci_host_bridge {struct list_head windows; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 struct pci_host_bridge* FUNC4 (struct tegra_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tegra_pcie *pcie)
{
	struct pci_host_bridge *host = FUNC4(pcie);
	struct list_head *windows = &host->windows;
	struct device *dev = pcie->dev;
	int err;

	FUNC2(windows, &pcie->pio, pcie->offset.io);
	FUNC2(windows, &pcie->mem, pcie->offset.mem);
	FUNC2(windows, &pcie->prefetch, pcie->offset.mem);
	FUNC1(windows, &pcie->busn);

	err = FUNC0(dev, windows);
	if (err < 0) {
		FUNC3(windows);
		return err;
	}

	FUNC5(&pcie->pio, pcie->io.start);

	return 0;
}