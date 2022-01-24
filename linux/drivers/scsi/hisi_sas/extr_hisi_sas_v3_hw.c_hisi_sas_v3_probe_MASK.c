#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {int num_phys; struct asd_sas_port** sas_port; struct asd_sas_phy** sas_phy; int /*<<< orphan*/ * sas_addr; int /*<<< orphan*/  lldd_module; struct device* dev; int /*<<< orphan*/  sas_ha_name; struct hisi_hba* lldd_ha; TYPE_1__ core; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct hisi_hba {int n_phy; int prot_mask; TYPE_4__* hw; int /*<<< orphan*/  shost; TYPE_3__* port; TYPE_2__* phy; int /*<<< orphan*/ * sas_addr; int /*<<< orphan*/  regs; } ;
struct asd_sas_port {int dummy; } ;
struct asd_sas_phy {int dummy; } ;
struct Scsi_Host {int max_channel; int max_cmd_len; void* cmd_per_lun; void* can_queue; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_id; int /*<<< orphan*/  transportt; } ;
struct TYPE_8__ {int (* hw_init ) (struct hisi_hba*) ;} ;
struct TYPE_7__ {struct asd_sas_port sas_port; } ;
struct TYPE_6__ {struct asd_sas_phy sas_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HISI_SAS_DIX_PROT_MASK ; 
 int /*<<< orphan*/  HISI_SAS_MAX_DEVICES ; 
 void* HISI_SAS_UNRESERVED_IPTT ; 
 int /*<<< orphan*/  SHOST_DIX_GUARD_CRC ; 
 struct sas_ha_struct* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct sas_ha_struct*) ; 
 void* FUNC5 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ hisi_sas_debugfs_enable ; 
 int /*<<< orphan*/  FUNC7 (struct hisi_hba*) ; 
 struct Scsi_Host* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  hisi_sas_stt ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prot_mask ; 
 int FUNC15 (struct sas_ha_struct*) ; 
 int FUNC16 (struct Scsi_Host*,struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC21 (struct Scsi_Host*) ; 
 struct hisi_hba* FUNC22 (struct Scsi_Host*) ; 
 int FUNC23 (struct hisi_hba*) ; 

__attribute__((used)) static int
FUNC24(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct Scsi_Host *shost;
	struct hisi_hba *hisi_hba;
	struct device *dev = &pdev->dev;
	struct asd_sas_phy **arr_phy;
	struct asd_sas_port **arr_port;
	struct sas_ha_struct *sha;
	int rc, phy_nr, port_nr, i;

	rc = FUNC10(pdev);
	if (rc)
		goto err_out;

	FUNC13(pdev);

	rc = FUNC12(pdev, DRV_NAME);
	if (rc)
		goto err_out_disable_device;

	rc = FUNC6(&pdev->dev, FUNC0(64));
	if (rc)
		rc = FUNC6(&pdev->dev, FUNC0(32));
	if (rc) {
		FUNC2(dev, "No usable DMA addressing method\n");
		rc = -ENODEV;
		goto err_out_regions;
	}

	shost = FUNC8(pdev);
	if (!shost) {
		rc = -ENOMEM;
		goto err_out_regions;
	}

	sha = FUNC1(shost);
	hisi_hba = FUNC22(shost);
	FUNC4(dev, sha);

	hisi_hba->regs = FUNC14(pdev, 5, 0);
	if (!hisi_hba->regs) {
		FUNC2(dev, "cannot map register\n");
		rc = -ENOMEM;
		goto err_out_ha;
	}

	phy_nr = port_nr = hisi_hba->n_phy;

	arr_phy = FUNC5(dev, phy_nr, sizeof(void *), GFP_KERNEL);
	arr_port = FUNC5(dev, port_nr, sizeof(void *), GFP_KERNEL);
	if (!arr_phy || !arr_port) {
		rc = -ENOMEM;
		goto err_out_ha;
	}

	sha->sas_phy = arr_phy;
	sha->sas_port = arr_port;
	sha->core.shost = shost;
	sha->lldd_ha = hisi_hba;

	shost->transportt = hisi_sas_stt;
	shost->max_id = HISI_SAS_MAX_DEVICES;
	shost->max_lun = ~0;
	shost->max_channel = 1;
	shost->max_cmd_len = 16;
	shost->can_queue = HISI_SAS_UNRESERVED_IPTT;
	shost->cmd_per_lun = HISI_SAS_UNRESERVED_IPTT;

	sha->sas_ha_name = DRV_NAME;
	sha->dev = dev;
	sha->lldd_module = THIS_MODULE;
	sha->sas_addr = &hisi_hba->sas_addr[0];
	sha->num_phys = hisi_hba->n_phy;

	for (i = 0; i < hisi_hba->n_phy; i++) {
		sha->sas_phy[i] = &hisi_hba->phy[i].sas_phy;
		sha->sas_port[i] = &hisi_hba->port[i].sas_port;
	}

	if (hisi_hba->prot_mask) {
		FUNC3(dev, "Registering for DIF/DIX prot_mask=0x%x\n",
			 prot_mask);
		FUNC19(hisi_hba->shost, prot_mask);
		if (hisi_hba->prot_mask & HISI_SAS_DIX_PROT_MASK)
			FUNC18(hisi_hba->shost,
					    SHOST_DIX_GUARD_CRC);
	}

	if (hisi_sas_debugfs_enable)
		FUNC7(hisi_hba);

	rc = FUNC16(shost, dev);
	if (rc)
		goto err_out_ha;

	rc = FUNC15(sha);
	if (rc)
		goto err_out_register_ha;

	rc = hisi_hba->hw->hw_init(hisi_hba);
	if (rc)
		goto err_out_register_ha;

	FUNC21(shost);

	return 0;

err_out_register_ha:
	FUNC20(shost);
err_out_ha:
	FUNC17(shost);
err_out_regions:
	FUNC11(pdev);
err_out_disable_device:
	FUNC9(pdev);
err_out:
	return rc;
}