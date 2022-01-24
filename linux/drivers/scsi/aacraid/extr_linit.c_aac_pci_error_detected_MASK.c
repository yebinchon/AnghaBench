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
struct aac_dev {int handle_pci_error; int /*<<< orphan*/  scsi_host_ptr; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_CAN_RECOVER ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
#define  pci_channel_io_frozen 130 
#define  pci_channel_io_normal 129 
#define  pci_channel_io_perm_failure 128 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct aac_dev* FUNC8 (struct Scsi_Host*) ; 

__attribute__((used)) static pci_ers_result_t FUNC9(struct pci_dev *pdev,
					enum pci_channel_state error)
{
	struct Scsi_Host *shost = FUNC6(pdev);
	struct aac_dev *aac = FUNC8(shost);

	FUNC4(&pdev->dev, "aacraid: PCI error detected %x\n", error);

	switch (error) {
	case pci_channel_io_normal:
		return PCI_ERS_RESULT_CAN_RECOVER;
	case pci_channel_io_frozen:
		aac->handle_pci_error = 1;

		FUNC7(aac->scsi_host_ptr);
		FUNC1(aac);
		FUNC2(aac);
		FUNC3(aac);

		FUNC5(pdev);
		FUNC0(aac, 0);

		return PCI_ERS_RESULT_NEED_RESET;
	case pci_channel_io_perm_failure:
		aac->handle_pci_error = 1;

		FUNC2(aac);
		return PCI_ERS_RESULT_DISCONNECT;
	}

	return PCI_ERS_RESULT_NEED_RESET;
}