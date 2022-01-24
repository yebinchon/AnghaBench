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
struct sas_ha_struct {struct hisi_hba* lldd_ha; } ;
struct pci_dev {int /*<<< orphan*/  pm_cap; } ;
struct hisi_hba {int /*<<< orphan*/  flags; int /*<<< orphan*/  wq; struct Scsi_Host* shost; struct device* dev; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
typedef  int /*<<< orphan*/  pci_power_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HISI_SAS_REJECT_CMD_BIT ; 
 int /*<<< orphan*/  HISI_SAS_RESET_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct sas_ha_struct* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC14 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev, pm_message_t state)
{
	struct sas_ha_struct *sha = FUNC9(pdev);
	struct hisi_hba *hisi_hba = sha->lldd_ha;
	struct device *dev = hisi_hba->dev;
	struct Scsi_Host *shost = hisi_hba->shost;
	pci_power_t device_state;
	int rc;

	if (!pdev->pm_cap) {
		FUNC1(dev, "PCI PM not supported\n");
		return -ENODEV;
	}

	if (FUNC16(HISI_SAS_RESET_BIT, &hisi_hba->flags))
		return -1;

	FUNC13(shost);
	FUNC15(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);
	FUNC4(hisi_hba->wq);

	rc = FUNC3(hisi_hba);
	if (rc) {
		FUNC1(dev, "PM suspend: disable host failed rc=%d\n", rc);
		FUNC0(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);
		FUNC0(HISI_SAS_RESET_BIT, &hisi_hba->flags);
		FUNC14(shost);
		return rc;
	}

	FUNC5(hisi_hba);

	device_state = FUNC7(pdev, state);
	FUNC2(dev, "entering operating state [D%d]\n",
			device_state);
	FUNC10(pdev);
	FUNC8(pdev);
	FUNC11(pdev, device_state);

	FUNC6(hisi_hba);

	FUNC12(sha);
	return 0;
}