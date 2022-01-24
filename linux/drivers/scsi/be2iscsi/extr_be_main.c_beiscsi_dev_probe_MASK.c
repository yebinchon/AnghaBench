#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wq_name ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int device; int /*<<< orphan*/  dev; } ;
struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {struct be_eq_obj* be_eq; } ;
struct TYPE_11__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  va; int /*<<< orphan*/  size; } ;
struct TYPE_15__ {int* mcc_tag; TYPE_2__ mbox_mem_alloced; scalar_t__ mcc_free_index; scalar_t__ mcc_alloc_index; TYPE_1__* ptag_state; int /*<<< orphan*/  mcc_tag_available; scalar_t__* mcc_tag_status; int /*<<< orphan*/ * mcc_wait; } ;
struct TYPE_12__ {int /*<<< orphan*/  ios_per_ctrl; int /*<<< orphan*/  cxns_per_ctrl; } ;
struct beiscsi_hba {int mac_addr_set; int num_cpus; TYPE_6__* shost; TYPE_4__* pcidev; TYPE_8__ ctrl; int /*<<< orphan*/  wq; int /*<<< orphan*/  hw_check; int /*<<< orphan*/  recover_port; int /*<<< orphan*/  sess_work; int /*<<< orphan*/  eqd_update; int /*<<< orphan*/  state; int /*<<< orphan*/  boot_work; struct hwi_controller* phwi_ctrlr; TYPE_3__ params; int /*<<< orphan*/  async_pdu_lock; int /*<<< orphan*/  mgmt_sgl_lock; int /*<<< orphan*/  io_sgl_lock; int /*<<< orphan*/  generation; void* iotask_fn; } ;
struct be_eq_obj {int /*<<< orphan*/  iopoll; int /*<<< orphan*/  mcc_work; } ;
struct be_dma_mem {int dummy; } ;
struct TYPE_14__ {int host_no; int /*<<< orphan*/  can_queue; int /*<<< orphan*/  max_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; scalar_t__ msix_enabled; } ;
struct TYPE_10__ {int /*<<< orphan*/  tag_mem_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_EQD_UPDATE_INTERVAL ; 
 int /*<<< orphan*/  BEISCSI_HBA_BOOT_FOUND ; 
 int /*<<< orphan*/  BEISCSI_HBA_ONLINE ; 
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  BEISCSI_UE_DETECT_INTERVAL ; 
#define  BE_DEVICE_ID1 133 
#define  BE_DEVICE_ID2 132 
 int /*<<< orphan*/  BE_GEN2 ; 
 int /*<<< orphan*/  BE_GEN3 ; 
 int /*<<< orphan*/  BE_GEN4 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int MAX_MCC_CMD ; 
#define  OC_DEVICE_ID1 131 
#define  OC_DEVICE_ID2 130 
#define  OC_DEVICE_ID3 129 
#define  OC_SKH_ID1 128 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*) ; 
 int FUNC5 (struct beiscsi_hba*,struct pci_dev*) ; 
 int /*<<< orphan*/  be_iopoll ; 
 int /*<<< orphan*/  be_iopoll_budget ; 
 int FUNC6 (struct beiscsi_hba*,unsigned int*) ; 
 int /*<<< orphan*/  beiscsi_boot_work ; 
 int /*<<< orphan*/  FUNC7 (struct beiscsi_hba*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  beiscsi_eqd_update_work ; 
 int /*<<< orphan*/  FUNC9 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC10 (struct beiscsi_hba*) ; 
 int FUNC11 (TYPE_8__*,struct beiscsi_hba*) ; 
 int FUNC12 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC13 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,struct beiscsi_hba*) ; 
 struct beiscsi_hba* FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  beiscsi_hw_health_check ; 
 int /*<<< orphan*/  FUNC17 (struct beiscsi_hba*) ; 
 int FUNC18 (struct beiscsi_hba*) ; 
 int FUNC19 (struct beiscsi_hba*) ; 
 int FUNC20 (struct beiscsi_hba*) ; 
 void* beiscsi_iotask ; 
 void* beiscsi_iotask_v2 ; 
 int /*<<< orphan*/  FUNC21 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  beiscsi_mcc_work ; 
 int /*<<< orphan*/  beiscsi_recover_port ; 
 int /*<<< orphan*/  beiscsi_sess_work ; 
 int /*<<< orphan*/  FUNC22 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC23 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC24 (struct beiscsi_hba*,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC31 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC32 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC36 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_6__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC42 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_4__*) ; 
 int FUNC44 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC45 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC46 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC47 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC50 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC53(struct pci_dev *pcidev,
			     const struct pci_device_id *id)
{
	struct hwi_context_memory *phwi_context;
	struct hwi_controller *phwi_ctrlr;
	struct beiscsi_hba *phba = NULL;
	struct be_eq_obj *pbe_eq;
	unsigned int s_handle;
	char wq_name[20];
	int ret, i;

	ret = FUNC8(pcidev);
	if (ret < 0) {
		FUNC27(&pcidev->dev,
			"beiscsi_dev_probe - Failed to enable pci device\n");
		return ret;
	}

	phba = FUNC15(pcidev);
	if (!phba) {
		FUNC27(&pcidev->dev,
			"beiscsi_dev_probe - Failed in beiscsi_hba_alloc\n");
		ret = -ENOMEM;
		goto disable_pci;
	}

	/* Enable EEH reporting */
	ret = FUNC44(pcidev);
	if (ret)
		FUNC21(phba, KERN_WARNING, BEISCSI_LOG_INIT,
			    "BM_%d : PCIe Error Reporting "
			    "Enabling Failed\n");

	FUNC46(pcidev);

	/* Initialize Driver configuration Paramters */
	FUNC16(phba);

	phba->mac_addr_set = false;

	switch (pcidev->device) {
	case BE_DEVICE_ID1:
	case OC_DEVICE_ID1:
	case OC_DEVICE_ID2:
		phba->generation = BE_GEN2;
		phba->iotask_fn = beiscsi_iotask;
		FUNC28(&pcidev->dev,
			 "Obsolete/Unsupported BE2 Adapter Family\n");
		break;
	case BE_DEVICE_ID2:
	case OC_DEVICE_ID3:
		phba->generation = BE_GEN3;
		phba->iotask_fn = beiscsi_iotask;
		break;
	case OC_SKH_ID1:
		phba->generation = BE_GEN4;
		phba->iotask_fn = beiscsi_iotask_v2;
		break;
	default:
		phba->generation = 0;
	}

	ret = FUNC5(phba, pcidev);
	if (ret) {
		FUNC21(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : be_ctrl_init failed\n");
		goto free_hba;
	}

	ret = FUNC20(phba);
	if (ret)
		goto free_hba;

	FUNC51(&phba->io_sgl_lock);
	FUNC51(&phba->mgmt_sgl_lock);
	FUNC51(&phba->async_pdu_lock);
	ret = FUNC11(&phba->ctrl, phba);
	if (ret != 0) {
		FUNC21(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : Error getting fw config\n");
		goto free_port;
	}
	FUNC14(&phba->ctrl, phba);
	FUNC13(phba);
	FUNC22(phba);
	FUNC23(phba);

	FUNC4(phba);

	FUNC21(phba, KERN_INFO, BEISCSI_LOG_INIT,
		    "BM_%d : num_cpus = %d\n",
		    phba->num_cpus);

	phba->shost->max_id = phba->params.cxns_per_ctrl;
	phba->shost->can_queue = phba->params.ios_per_ctrl;
	ret = FUNC12(phba);
	if (ret < 0) {
		FUNC21(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : alloc host mem failed\n");
		goto free_port;
	}

	ret = FUNC19(phba);
	if (ret < 0) {
		FUNC21(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : init port failed\n");
		FUNC10(phba);
		goto free_port;
	}

	for (i = 0; i < MAX_MCC_CMD; i++) {
		FUNC33(&phba->ctrl.mcc_wait[i + 1]);
		phba->ctrl.mcc_tag[i] = i + 1;
		phba->ctrl.mcc_tag_status[i + 1] = 0;
		phba->ctrl.mcc_tag_available++;
		FUNC38(&phba->ctrl.ptag_state[i].tag_mem_state, 0,
		       sizeof(struct be_dma_mem));
	}

	phba->ctrl.mcc_alloc_index = phba->ctrl.mcc_free_index = 0;

	FUNC50(wq_name, sizeof(wq_name), "beiscsi_%02x_wq",
		 phba->shost->host_no);
	phba->wq = FUNC3("%s", WQ_MEM_RECLAIM, 1, wq_name);
	if (!phba->wq) {
		FUNC21(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : beiscsi_dev_probe-"
			    "Failed to allocate work queue\n");
		ret = -ENOMEM;
		goto free_twq;
	}

	FUNC0(&phba->eqd_update, beiscsi_eqd_update_work);

	phwi_ctrlr = phba->phwi_ctrlr;
	phwi_context = phwi_ctrlr->phwi_ctxt;

	for (i = 0; i < phba->num_cpus; i++) {
		pbe_eq = &phwi_context->be_eq[i];
		FUNC35(&pbe_eq->iopoll, be_iopoll_budget, be_iopoll);
	}

	i = (phba->pcidev->msix_enabled) ? i : 0;
	/* Work item for MCC handling */
	pbe_eq = &phwi_context->be_eq[i];
	FUNC1(&pbe_eq->mcc_work, beiscsi_mcc_work);

	ret = FUNC18(phba);
	if (ret < 0) {
		FUNC21(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : beiscsi_dev_probe-"
			    "Failed to beiscsi_init_irqs\n");
		goto disable_iopoll;
	}
	FUNC32(phba);

	ret = FUNC36(phba->shost, &phba->pcidev->dev);
	if (ret)
		goto free_irqs;

	/* set online bit after port is operational */
	FUNC49(BEISCSI_HBA_ONLINE, &phba->state);
	FUNC2(phba, KERN_INFO,
		      "BM_%d : port online: 0x%lx\n", phba->state);

	FUNC1(&phba->boot_work, beiscsi_boot_work);
	ret = FUNC6(phba, &s_handle);
	if (ret > 0) {
		FUNC24(phba, s_handle);
		/**
		 * Set this bit after starting the work to let
		 * probe handle it first.
		 * ASYNC event can too schedule this work.
		 */
		FUNC49(BEISCSI_HBA_BOOT_FOUND, &phba->state);
	}

	FUNC17(phba);
	FUNC48(&phba->eqd_update,
			      FUNC40(BEISCSI_EQD_UPDATE_INTERVAL));

	FUNC1(&phba->sess_work, beiscsi_sess_work);
	FUNC0(&phba->recover_port, beiscsi_recover_port);
	/**
	 * Start UE detection here. UE before this will cause stall in probe
	 * and eventually fail the probe.
	 */
	FUNC52(&phba->hw_check, beiscsi_hw_health_check, 0);
	FUNC39(&phba->hw_check,
		  jiffies + FUNC40(BEISCSI_UE_DETECT_INTERVAL));
	FUNC21(phba, KERN_INFO, BEISCSI_LOG_INIT,
		    "\n\n\n BM_%d : SUCCESS - DRIVER LOADED\n\n\n");
	return 0;

free_irqs:
	FUNC31(phba);
	FUNC9(phba);
disable_iopoll:
	for (i = 0; i < phba->num_cpus; i++) {
		pbe_eq = &phwi_context->be_eq[i];
		FUNC34(&pbe_eq->iopoll);
	}
	FUNC26(phba->wq);
free_twq:
	FUNC30(phba);
	FUNC7(phba);
	FUNC10(phba);
free_port:
	FUNC29(&phba->pcidev->dev,
			    phba->ctrl.mbox_mem_alloced.size,
			    phba->ctrl.mbox_mem_alloced.va,
			    phba->ctrl.mbox_mem_alloced.dma);
	FUNC25(phba);
free_hba:
	FUNC43(phba->pcidev);
	FUNC41(phba->pcidev);
	FUNC37(phba->shost);
	FUNC47(pcidev, NULL);
disable_pci:
	FUNC45(pcidev);
	FUNC42(pcidev);
	return ret;
}