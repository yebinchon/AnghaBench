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
struct dwc2_pci_glue {int /*<<< orphan*/  phy; int /*<<< orphan*/  dwc2; } ;

/* Variables and functions */
 struct dwc2_pci_glue* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pci)
{
	struct dwc2_pci_glue *glue = FUNC0(pci);

	FUNC2(glue->dwc2);
	FUNC3(glue->phy);
	FUNC1(pci, NULL);
}