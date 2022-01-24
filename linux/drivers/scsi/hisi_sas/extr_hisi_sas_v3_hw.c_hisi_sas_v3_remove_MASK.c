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
struct TYPE_2__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {TYPE_1__ core; struct hisi_hba* lldd_ha; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct hisi_hba {int /*<<< orphan*/  timer; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sas_ha_struct* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct Scsi_Host*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	struct device *dev = &pdev->dev;
	struct sas_ha_struct *sha = FUNC1(dev);
	struct hisi_hba *hisi_hba = sha->lldd_ha;
	struct Scsi_Host *shost = sha->core.shost;

	FUNC2(hisi_hba);

	if (FUNC11(&hisi_hba->timer))
		FUNC0(&hisi_hba->timer);

	FUNC9(sha);
	FUNC8(sha->core.shost);

	FUNC5(pdev, hisi_hba);
	FUNC4(hisi_hba);
	FUNC7(pdev);
	FUNC6(pdev);
	FUNC3(hisi_hba);
	FUNC10(shost);
}