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
struct uio_info {struct uio_info* priv; TYPE_1__* mem; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ internal_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct uio_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct uio_info* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct uio_info*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *dev)
{
	struct uio_info *info = FUNC3(dev);
	int i;

	FUNC5(info);
	FUNC4(dev);
	FUNC2(dev);
	for (i = 0; i < 5; i++) {
		if (info->mem[i].internal_addr)
			FUNC0(info->mem[i].internal_addr);
	}
	FUNC1(info->priv);
	FUNC1(info);
}