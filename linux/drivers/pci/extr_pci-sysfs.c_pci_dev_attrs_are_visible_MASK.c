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
typedef  int /*<<< orphan*/  umode_t ;
struct pci_dev {int class; } ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
struct attribute {int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {struct attribute attr; } ;

/* Variables and functions */
 int PCI_CLASS_DISPLAY_VGA ; 
 TYPE_1__ dev_attr_boot_vga ; 
 struct device* FUNC0 (struct kobject*) ; 
 struct pci_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static umode_t FUNC2(struct kobject *kobj,
					 struct attribute *a, int n)
{
	struct device *dev = FUNC0(kobj);
	struct pci_dev *pdev = FUNC1(dev);

	if (a == &dev_attr_boot_vga.attr)
		if ((pdev->class >> 8) != PCI_CLASS_DISPLAY_VGA)
			return 0;

	return a->mode;
}