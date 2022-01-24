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
struct pci_dev {int /*<<< orphan*/  dev; scalar_t__ multifunction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	if (dev->multifunction) {
		FUNC0(&dev->dev);
		FUNC1(dev, "async suspend disabled to avoid multi-function power-on ordering issue\n");
	}
}