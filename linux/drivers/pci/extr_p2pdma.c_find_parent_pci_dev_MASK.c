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
struct pci_dev {int dummy; } ;
struct device {struct device* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct pci_dev* FUNC3 (struct device*) ; 

__attribute__((used)) static struct pci_dev *FUNC4(struct device *dev)
{
	struct device *parent;

	dev = FUNC1(dev);

	while (dev) {
		if (FUNC0(dev))
			return FUNC3(dev);

		parent = FUNC1(dev->parent);
		FUNC2(dev);
		dev = parent;
	}

	return NULL;
}