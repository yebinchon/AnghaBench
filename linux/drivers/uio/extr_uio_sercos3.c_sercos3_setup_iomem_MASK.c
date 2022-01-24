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
struct uio_info {TYPE_1__* mem; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  memtype; int /*<<< orphan*/  size; int /*<<< orphan*/  internal_addr; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  UIO_MEM_PHYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev, struct uio_info *info,
			       int n, int pci_bar)
{
	info->mem[n].addr = FUNC2(dev, pci_bar);
	if (!info->mem[n].addr)
		return -1;
	info->mem[n].internal_addr = FUNC0(FUNC2(dev, pci_bar),
					     FUNC1(dev, pci_bar));
	if (!info->mem[n].internal_addr)
		return -1;
	info->mem[n].size = FUNC1(dev, pci_bar);
	info->mem[n].memtype = UIO_MEM_PHYS;
	return 0;
}