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
typedef  int /*<<< orphan*/  umode_t ;
struct pci_dev {int dummy; } ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
struct attribute {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 struct device* FUNC0 (struct kobject*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static umode_t FUNC3(struct kobject *kobj,
					    struct attribute *a, int n)
{
	struct device *dev = FUNC0(kobj);
	struct pci_dev *pdev = FUNC2(dev);

	if (FUNC1(pdev))
		return a->mode;

	return 0;
}