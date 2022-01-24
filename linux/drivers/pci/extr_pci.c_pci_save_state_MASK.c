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
struct pci_dev {int state_saved; int /*<<< orphan*/ * saved_config_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 

int FUNC6(struct pci_dev *dev)
{
	int i;
	/* XXX: 100% dword access ok here? */
	for (i = 0; i < 16; i++)
		FUNC0(dev, i * 4, &dev->saved_config_space[i]);
	dev->state_saved = true;

	i = FUNC3(dev);
	if (i != 0)
		return i;

	i = FUNC4(dev);
	if (i != 0)
		return i;

	FUNC2(dev);
	FUNC1(dev);
	return FUNC5(dev);
}