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
struct pci_dev {int dummy; } ;
struct hisi_hba {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*) ; 
 int FUNC4 (struct hisi_hba*) ; 
 struct sas_ha_struct* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct sas_ha_struct *sha = FUNC5(pdev);
	struct hisi_hba *hisi_hba = sha->lldd_ha;
	struct device *dev = hisi_hba->dev;
	int rc;

	FUNC3(hisi_hba);

	rc = FUNC4(hisi_hba);
	if (rc) {
		FUNC0(dev, "FLR: hw init failed rc=%d\n", rc);
		return;
	}

	FUNC2(hisi_hba);
	FUNC1(dev, "FLR done\n");
}