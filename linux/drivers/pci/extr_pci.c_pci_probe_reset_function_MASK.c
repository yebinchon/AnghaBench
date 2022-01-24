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

/* Variables and functions */
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct pci_dev*,int) ; 
 int FUNC2 (struct pci_dev*,int) ; 
 int FUNC3 (struct pci_dev*,int) ; 
 int FUNC4 (struct pci_dev*,int) ; 
 int FUNC5 (struct pci_dev*,int) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 

int FUNC7(struct pci_dev *dev)
{
	int rc;

	FUNC0();

	rc = FUNC3(dev, 1);
	if (rc != -ENOTTY)
		return rc;
	if (FUNC6(dev))
		return 0;
	rc = FUNC1(dev, 1);
	if (rc != -ENOTTY)
		return rc;
	rc = FUNC5(dev, 1);
	if (rc != -ENOTTY)
		return rc;
	rc = FUNC2(dev, 1);
	if (rc != -ENOTTY)
		return rc;

	return FUNC4(dev, 1);
}