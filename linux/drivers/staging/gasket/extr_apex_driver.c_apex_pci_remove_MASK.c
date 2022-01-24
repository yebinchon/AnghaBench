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
struct gasket_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gasket_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct gasket_dev* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pci_dev)
{
	struct gasket_dev *gasket_dev = FUNC3(pci_dev);

	FUNC0(gasket_dev);
	FUNC1(pci_dev);
	FUNC2(pci_dev);
}