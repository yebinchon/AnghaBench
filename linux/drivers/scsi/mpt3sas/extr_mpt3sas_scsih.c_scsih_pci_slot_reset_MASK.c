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
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_ADAPTER {struct pci_dev* pdev; scalar_t__ pci_error_recovery; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  FORCE_BIG_HAMMER ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,char*,char*) ; 
 int FUNC2 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct MPT3SAS_ADAPTER*) ; 
 struct Scsi_Host* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct MPT3SAS_ADAPTER* FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static pci_ers_result_t
FUNC7(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC4(pdev);
	struct MPT3SAS_ADAPTER *ioc = FUNC6(shost);
	int rc;

	FUNC0(ioc, "PCI error: slot reset callback!!\n");

	ioc->pci_error_recovery = 0;
	ioc->pdev = pdev;
	FUNC5(pdev);
	rc = FUNC3(ioc);
	if (rc)
		return PCI_ERS_RESULT_DISCONNECT;

	rc = FUNC2(ioc, FORCE_BIG_HAMMER);

	FUNC1(ioc, "hard reset: %s\n",
		 (rc == 0) ? "success" : "failed");

	if (!rc)
		return PCI_ERS_RESULT_RECOVERED;
	else
		return PCI_ERS_RESULT_DISCONNECT;
}