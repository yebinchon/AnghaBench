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
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static pci_ers_result_t FUNC1(struct pci_dev *pdev)
{
	FUNC0(&pdev->dev, "aacraid: PCI error - mmio enabled\n");
	return PCI_ERS_RESULT_NEED_RESET;
}