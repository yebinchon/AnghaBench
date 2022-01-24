#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int devfn; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; TYPE_1__* bus; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct mvumi_hba {int unique_id; struct pci_dev* pdev; TYPE_2__* instancet; struct Scsi_Host* shost; int /*<<< orphan*/  sas_discovery_mutex; int /*<<< orphan*/  int_cmd_wait_q; int /*<<< orphan*/  fw_outstanding; int /*<<< orphan*/  shost_dev_list; int /*<<< orphan*/  mhba_dev_list; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  waiting_req_list; int /*<<< orphan*/  res_list; int /*<<< orphan*/  free_ob_list; int /*<<< orphan*/  ob_data_list; int /*<<< orphan*/  cmd_pool; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* disable_intr ) (struct mvumi_hba*) ;int /*<<< orphan*/  (* enable_intr ) (struct mvumi_hba*) ;} ;
struct TYPE_3__ {int number; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mvumi_hba*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mvumi_hba*) ; 
 int FUNC8 (struct mvumi_hba*) ; 
 int FUNC9 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  mvumi_isr_handler ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  mvumi_template ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,struct mvumi_hba*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mvumi_hba*) ; 
 struct Scsi_Host* FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (struct Scsi_Host*) ; 
 struct mvumi_hba* FUNC18 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC19 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  FUNC20 (struct mvumi_hba*) ; 

__attribute__((used)) static int FUNC21(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct Scsi_Host *host;
	struct mvumi_hba *mhba;
	int ret;

	FUNC2(&pdev->dev, " %#4.04x:%#4.04x:%#4.04x:%#4.04x: ",
			pdev->vendor, pdev->device, pdev->subsystem_vendor,
			pdev->subsystem_device);

	ret = FUNC13(pdev);
	if (ret)
		return ret;

	ret = FUNC10(pdev);
	if (ret)
		goto fail_set_dma_mask;

	host = FUNC16(&mvumi_template, sizeof(*mhba));
	if (!host) {
		FUNC3(&pdev->dev, "scsi_host_alloc failed\n");
		ret = -ENOMEM;
		goto fail_alloc_instance;
	}
	mhba = FUNC18(host);

	FUNC0(&mhba->cmd_pool);
	FUNC0(&mhba->ob_data_list);
	FUNC0(&mhba->free_ob_list);
	FUNC0(&mhba->res_list);
	FUNC0(&mhba->waiting_req_list);
	FUNC6(&mhba->device_lock);
	FUNC0(&mhba->mhba_dev_list);
	FUNC0(&mhba->shost_dev_list);
	FUNC1(&mhba->fw_outstanding, 0);
	FUNC5(&mhba->int_cmd_wait_q);
	FUNC6(&mhba->sas_discovery_mutex);

	mhba->pdev = pdev;
	mhba->shost = host;
	mhba->unique_id = pdev->bus->number << 8 | pdev->devfn;

	ret = FUNC8(mhba);
	if (ret)
		goto fail_init_fw;

	ret = FUNC15(mhba->pdev->irq, mvumi_isr_handler, IRQF_SHARED,
				"mvumi", mhba);
	if (ret) {
		FUNC3(&pdev->dev, "failed to register IRQ\n");
		goto fail_init_irq;
	}

	mhba->instancet->enable_intr(mhba);
	FUNC14(pdev, mhba);

	ret = FUNC9(mhba);
	if (ret)
		goto fail_io_attach;

	FUNC7(mhba);
	FUNC2(&pdev->dev, "probe mvumi driver successfully.\n");

	return 0;

fail_io_attach:
	mhba->instancet->disable_intr(mhba);
	FUNC4(mhba->pdev->irq, mhba);
fail_init_irq:
	FUNC11(mhba);
fail_init_fw:
	FUNC17(host);

fail_alloc_instance:
fail_set_dma_mask:
	FUNC12(pdev);

	return ret;
}