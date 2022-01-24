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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct pm8001_hba_info {TYPE_1__* io_mem; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ memvirtaddr; scalar_t__ memsize; scalar_t__ membase; } ;

/* Variables and functions */
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (struct pci_dev*,int) ; 
 scalar_t__ FUNC3 (struct pci_dev*,int) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,...) ; 

__attribute__((used)) static int FUNC6(struct pm8001_hba_info *pm8001_ha)
{
	u32 bar;
	u32 logicalBar = 0;
	struct pci_dev *pdev;

	pdev = pm8001_ha->pdev;
	/* map pci mem (PMC pci base 0-3)*/
	for (bar = 0; bar < 6; bar++) {
		/*
		** logical BARs for SPC:
		** bar 0 and 1 - logical BAR0
		** bar 2 and 3 - logical BAR1
		** bar4 - logical BAR2
		** bar5 - logical BAR3
		** Skip the appropriate assignments:
		*/
		if ((bar == 1) || (bar == 3))
			continue;
		if (FUNC2(pdev, bar) & IORESOURCE_MEM) {
			pm8001_ha->io_mem[logicalBar].membase =
				FUNC4(pdev, bar);
			pm8001_ha->io_mem[logicalBar].memsize =
				FUNC3(pdev, bar);
			pm8001_ha->io_mem[logicalBar].memvirtaddr =
				FUNC1(pm8001_ha->io_mem[logicalBar].membase,
				pm8001_ha->io_mem[logicalBar].memsize);
			FUNC0(pm8001_ha,
				FUNC5("PCI: bar %d, logicalBar %d ",
				bar, logicalBar));
			FUNC0(pm8001_ha, FUNC5(
				"base addr %llx virt_addr=%llx len=%d\n",
				(u64)pm8001_ha->io_mem[logicalBar].membase,
				(u64)(unsigned long)
				pm8001_ha->io_mem[logicalBar].memvirtaddr,
				pm8001_ha->io_mem[logicalBar].memsize));
		} else {
			pm8001_ha->io_mem[logicalBar].membase	= 0;
			pm8001_ha->io_mem[logicalBar].memsize	= 0;
			pm8001_ha->io_mem[logicalBar].memvirtaddr = 0;
		}
		logicalBar++;
	}
	return 0;
}