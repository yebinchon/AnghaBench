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
struct MPT3SAS_ADAPTER {int pci_error_recovery; int /*<<< orphan*/  shost; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  int /*<<< orphan*/  pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_CAN_RECOVER ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT3SAS_ADAPTER*) ; 
#define  pci_channel_io_frozen 130 
#define  pci_channel_io_normal 129 
#define  pci_channel_io_perm_failure 128 
 struct Scsi_Host* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct MPT3SAS_ADAPTER* FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static pci_ers_result_t
FUNC7(struct pci_dev *pdev, pci_channel_state_t state)
{
	struct Scsi_Host *shost = FUNC4(pdev);
	struct MPT3SAS_ADAPTER *ioc = FUNC6(shost);

	FUNC1(ioc, "PCI error: detected callback, state(%d)!!\n", state);

	switch (state) {
	case pci_channel_io_normal:
		return PCI_ERS_RESULT_CAN_RECOVER;
	case pci_channel_io_frozen:
		/* Fatal error, prepare for slot reset */
		ioc->pci_error_recovery = 1;
		FUNC5(ioc->shost);
		FUNC3(ioc);
		FUNC2(ioc);
		return PCI_ERS_RESULT_NEED_RESET;
	case pci_channel_io_perm_failure:
		/* Permanent error, prepare for device removal */
		ioc->pci_error_recovery = 1;
		FUNC3(ioc);
		FUNC0(ioc);
		return PCI_ERS_RESULT_DISCONNECT;
	}
	return PCI_ERS_RESULT_NEED_RESET;
}