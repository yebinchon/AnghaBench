#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sas_ha_struct {struct hisi_hba* lldd_ha; } ;
struct pci_dev {int /*<<< orphan*/  current_state; } ;
struct hisi_hba {int /*<<< orphan*/  flags; TYPE_1__* hw; struct device* dev; struct Scsi_Host* shost; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  pci_power_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* phys_init ) (struct hisi_hba*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HISI_SAS_REJECT_CMD_BIT ; 
 int /*<<< orphan*/  HISI_SAS_RESET_BIT ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 unsigned int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sas_ha_struct* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC14 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC15 (struct hisi_hba*) ; 

__attribute__((used)) static int FUNC16(struct pci_dev *pdev)
{
	struct sas_ha_struct *sha = FUNC7(pdev);
	struct hisi_hba *hisi_hba = sha->lldd_ha;
	struct Scsi_Host *shost = hisi_hba->shost;
	struct device *dev = hisi_hba->dev;
	unsigned int rc;
	pci_power_t device_state = pdev->current_state;

	FUNC2(dev, "resuming from operating state [D%d]\n",
		 device_state);
	FUNC10(pdev, PCI_D0);
	FUNC6(pdev, PCI_D0, 0);
	FUNC8(pdev);
	rc = FUNC5(pdev);
	if (rc) {
		FUNC1(dev, "enable device failed during resume (%d)\n", rc);
		return rc;
	}

	FUNC9(pdev);
	FUNC14(shost);
	FUNC0(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);

	FUNC11(sha);
	rc = FUNC3(hisi_hba);
	if (rc) {
		FUNC13(shost);
		FUNC4(pdev);
	}
	hisi_hba->hw->phys_init(hisi_hba);
	FUNC12(sha);
	FUNC0(HISI_SAS_RESET_BIT, &hisi_hba->flags);

	return 0;
}