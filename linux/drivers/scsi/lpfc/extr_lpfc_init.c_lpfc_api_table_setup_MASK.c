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
typedef  scalar_t__ uint8_t ;
struct lpfc_hba {int /*<<< orphan*/  sli_rev; scalar_t__ pci_dev_grp; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ LPFC_PCI_DEV_OC ; 
 int /*<<< orphan*/  LPFC_SLI_REV4 ; 
 int FUNC0 (struct lpfc_hba*,scalar_t__) ; 
 int FUNC1 (struct lpfc_hba*,scalar_t__) ; 
 int FUNC2 (struct lpfc_hba*,scalar_t__) ; 
 int FUNC3 (struct lpfc_hba*,scalar_t__) ; 

int
FUNC4(struct lpfc_hba *phba, uint8_t dev_grp)
{
	int rc;

	/* Set up lpfc PCI-device group */
	phba->pci_dev_grp = dev_grp;

	/* The LPFC_PCI_DEV_OC uses SLI4 */
	if (dev_grp == LPFC_PCI_DEV_OC)
		phba->sli_rev = LPFC_SLI_REV4;

	/* Set up device INIT API function jump table */
	rc = FUNC0(phba, dev_grp);
	if (rc)
		return -ENODEV;
	/* Set up SCSI API function jump table */
	rc = FUNC2(phba, dev_grp);
	if (rc)
		return -ENODEV;
	/* Set up SLI API function jump table */
	rc = FUNC3(phba, dev_grp);
	if (rc)
		return -ENODEV;
	/* Set up MBOX API function jump table */
	rc = FUNC1(phba, dev_grp);
	if (rc)
		return -ENODEV;

	return 0;
}