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
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct lpfc_sli_intf {int /*<<< orphan*/  word0; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  LPFC_SLI_INTF ; 
 scalar_t__ LPFC_SLI_INTF_REV_SLI4 ; 
 scalar_t__ LPFC_SLI_INTF_VALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct lpfc_sli_intf*) ; 
 int FUNC1 (struct pci_dev*,struct pci_device_id const*) ; 
 int FUNC2 (struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  lpfc_sli_intf_slirev ; 
 int /*<<< orphan*/  lpfc_sli_intf_valid ; 
 scalar_t__ FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct pci_dev *pdev, const struct pci_device_id *pid)
{
	int rc;
	struct lpfc_sli_intf intf;

	if (FUNC3(pdev, LPFC_SLI_INTF, &intf.word0))
		return -ENODEV;

	if ((FUNC0(lpfc_sli_intf_valid, &intf) == LPFC_SLI_INTF_VALID) &&
	    (FUNC0(lpfc_sli_intf_slirev, &intf) == LPFC_SLI_INTF_REV_SLI4))
		rc = FUNC2(pdev, pid);
	else
		rc = FUNC1(pdev, pid);

	return rc;
}