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
typedef  int /*<<< orphan*/  u32 ;
struct ssb_device {TYPE_1__* bus; } ;
struct TYPE_2__ {int bustype; int /*<<< orphan*/  host_pci; } ;

/* Variables and functions */
#define  SSB_BUSTYPE_PCI 129 
#define  SSB_BUSTYPE_SSB 128 
 int /*<<< orphan*/  SSB_PCIE_DMA_H32 ; 
 int /*<<< orphan*/  SSB_PCI_DMA ; 
 int /*<<< orphan*/  SSB_TMSHIGH ; 
 int SSB_TMSHIGH_DMA64 ; 
 int /*<<< orphan*/  FUNC0 (struct ssb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_device*) ; 
 int FUNC3 (struct ssb_device*,int /*<<< orphan*/ ) ; 

u32 FUNC4(struct ssb_device *dev)
{
	switch (dev->bus->bustype) {
	case SSB_BUSTYPE_SSB:
		return 0;
	case SSB_BUSTYPE_PCI:
		if (FUNC1(dev->bus->host_pci) &&
		    FUNC3(dev, SSB_TMSHIGH) & SSB_TMSHIGH_DMA64) {
			return SSB_PCIE_DMA_H32;
		} else {
			if (FUNC2(dev))
				return SSB_PCIE_DMA_H32;
			else
				return SSB_PCI_DMA;
		}
	default:
		FUNC0(dev);
	}
	return 0;
}