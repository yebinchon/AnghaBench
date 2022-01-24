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
struct pci_dev {int ptm_granularity; scalar_t__ ptm_root; } ;
typedef  int /*<<< orphan*/  clock_desc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	char clock_desc[8];

	switch (dev->ptm_granularity) {
	case 0:
		FUNC1(clock_desc, sizeof(clock_desc), "unknown");
		break;
	case 255:
		FUNC1(clock_desc, sizeof(clock_desc), ">254ns");
		break;
	default:
		FUNC1(clock_desc, sizeof(clock_desc), "%udns",
			 dev->ptm_granularity);
		break;
	}
	FUNC0(dev, "PTM enabled%s, %s granularity\n",
		 dev->ptm_root ? " (root)" : "", clock_desc);
}