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
struct pci_devres {int pinned; int /*<<< orphan*/  enabled; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct pci_devres* FUNC1 (struct pci_dev*) ; 

void FUNC2(struct pci_dev *pdev)
{
	struct pci_devres *dr;

	dr = FUNC1(pdev);
	FUNC0(!dr || !dr->enabled);
	if (dr)
		dr->pinned = 1;
}