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
struct pci_dev {TYPE_1__* resource; } ;
struct apertures_struct {TYPE_2__* ranges; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IORESOURCE_ROM_SHADOW ; 
 size_t PCI_ROM_RESOURCE ; 
 struct apertures_struct* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct apertures_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct apertures_struct*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev)
{
	struct apertures_struct *ap;
	bool primary = false;

	ap = FUNC0(1);
	if (!ap)
		return -ENOMEM;

	ap->ranges[0].base = FUNC3(pdev, 0);
	ap->ranges[0].size = FUNC2(pdev, 0);
#ifdef CONFIG_X86
	primary = pdev->resource[PCI_ROM_RESOURCE].flags &
					IORESOURCE_ROM_SHADOW;
#endif
	FUNC4(ap, "sm750_fb1", primary);
	FUNC1(ap);
	return 0;
}