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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct pci_host_bridge {struct mt7621_pcie* sysdata; int /*<<< orphan*/  swizzle_irq; int /*<<< orphan*/  map_irq; int /*<<< orphan*/ * ops; TYPE_2__ dev; int /*<<< orphan*/  busnr; int /*<<< orphan*/  windows; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;
struct mt7621_pcie {int /*<<< orphan*/  dev; TYPE_1__ busn; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mt7621_pci_ops ; 
 int /*<<< orphan*/  of_irq_parse_and_map_pci ; 
 int /*<<< orphan*/  pci_common_swizzle ; 
 struct mt7621_pcie* FUNC1 (struct pci_host_bridge*) ; 
 int FUNC2 (struct pci_host_bridge*) ; 

__attribute__((used)) static int FUNC3(struct pci_host_bridge *host,
				     struct list_head *res)
{
	struct mt7621_pcie *pcie = FUNC1(host);

	FUNC0(res, &host->windows);
	host->busnr = pcie->busn.start;
	host->dev.parent = pcie->dev;
	host->ops = &mt7621_pci_ops;
	host->map_irq = of_irq_parse_and_map_pci;
	host->swizzle_irq = pci_common_swizzle;
	host->sysdata = pcie;

	return FUNC2(host);
}