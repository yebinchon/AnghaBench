#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct iscsi_stats_info {int dummy; } ;
struct cnic_dev {TYPE_1__* pcidev; int /*<<< orphan*/  netdev; } ;
struct bnx2i_hba {int max_sqes; scalar_t__ max_cqes; int num_ccell; int hba_shutdown_tmo; int conn_teardown_tmo; int conn_ctx_destroy_tmo; TYPE_1__* pcidev; int /*<<< orphan*/ * regview; int /*<<< orphan*/  stats; int /*<<< orphan*/  stat_lock; int /*<<< orphan*/  cnic_dev_type; int /*<<< orphan*/  eh_wait; int /*<<< orphan*/  net_dev_lock; int /*<<< orphan*/  lock; void* max_rqes; void* max_active_conns; int /*<<< orphan*/  mtu_supported; int /*<<< orphan*/  ep_rdwr_lock; int /*<<< orphan*/  ep_destroy_list; int /*<<< orphan*/  ep_active_list; int /*<<< orphan*/  ep_ofld_list; int /*<<< orphan*/  reg_base; int /*<<< orphan*/  pci_devno; int /*<<< orphan*/  pci_func; int /*<<< orphan*/  pci_svid; int /*<<< orphan*/  pci_sdid; int /*<<< orphan*/  pci_vid; int /*<<< orphan*/  pci_did; int /*<<< orphan*/  netdev; struct Scsi_Host* shost; } ;
struct Scsi_Host {int max_lun; int max_cmd_len; scalar_t__ max_channel; void* max_id; int /*<<< orphan*/  transportt; int /*<<< orphan*/  dma_boundary; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  devfn; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  device; int /*<<< orphan*/  dma_mask; } ;

/* Variables and functions */
 scalar_t__ BNX2I_570X_CQ_WQES_MAX ; 
 int BNX2I_570X_SQ_WQES_DEFAULT ; 
 scalar_t__ BNX2I_570X_SQ_WQES_MAX ; 
 scalar_t__ BNX2I_5770X_CQ_WQES_MAX ; 
 int BNX2I_5770X_SQ_WQES_DEFAULT ; 
 scalar_t__ BNX2I_5770X_SQ_WQES_MAX ; 
 int /*<<< orphan*/  BNX2I_MAX_MTU_SUPPORTED ; 
 int /*<<< orphan*/  BNX2I_NX2_DEV_5709 ; 
 int /*<<< orphan*/  BNX2I_NX2_DEV_57710 ; 
 int BNX2_MQ_CONFIG2 ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* ISCSI_MAX_CONNS_PER_HBA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2i_hba*) ; 
 int /*<<< orphan*/  bnx2i_host_template ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2i_hba*,struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2i_hba*) ; 
 int /*<<< orphan*/  bnx2i_scsi_xport_template ; 
 scalar_t__ FUNC6 (struct bnx2i_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2i_hba*,struct Scsi_Host*) ; 
 scalar_t__ FUNC8 (struct bnx2i_hba*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct bnx2i_hba* FUNC12 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 void* FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* rq_size ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ sq_size ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct bnx2i_hba *FUNC24(struct cnic_dev *cnic)
{
	struct Scsi_Host *shost;
	struct bnx2i_hba *hba;

	shost = FUNC11(&bnx2i_host_template, sizeof(*hba), 0);
	if (!shost)
		return NULL;
	shost->dma_boundary = cnic->pcidev->dma_mask;
	shost->transportt = bnx2i_scsi_xport_template;
	shost->max_id = ISCSI_MAX_CONNS_PER_HBA;
	shost->max_channel = 0;
	shost->max_lun = 512;
	shost->max_cmd_len = 16;

	hba = FUNC12(shost);
	hba->shost = shost;
	hba->netdev = cnic->netdev;
	/* Get PCI related information and update hba struct members */
	hba->pcidev = cnic->pcidev;
	FUNC15(hba->pcidev);
	hba->pci_did = hba->pcidev->device;
	hba->pci_vid = hba->pcidev->vendor;
	hba->pci_sdid = hba->pcidev->subsystem_device;
	hba->pci_svid = hba->pcidev->subsystem_vendor;
	hba->pci_func = FUNC1(hba->pcidev->devfn);
	hba->pci_devno = FUNC2(hba->pcidev->devfn);

	FUNC4(hba, cnic);
	FUNC7(hba, shost);

	hba->reg_base = FUNC19(hba->pcidev, 0);
	if (FUNC23(BNX2I_NX2_DEV_5709, &hba->cnic_dev_type)) {
		hba->regview = FUNC17(hba->pcidev, 0, BNX2_MQ_CONFIG2);
		if (!hba->regview)
			goto ioreg_map_err;
	} else if (FUNC23(BNX2I_NX2_DEV_57710, &hba->cnic_dev_type)) {
		hba->regview = FUNC17(hba->pcidev, 0, 4096);
		if (!hba->regview)
			goto ioreg_map_err;
	}

	if (FUNC8(hba))
		goto mp_bdt_mem_err;

	FUNC0(&hba->ep_ofld_list);
	FUNC0(&hba->ep_active_list);
	FUNC0(&hba->ep_destroy_list);
	FUNC20(&hba->ep_rdwr_lock);

	hba->mtu_supported = BNX2I_MAX_MTU_SUPPORTED;

	/* different values for 5708/5709/57710 */
	hba->max_active_conns = ISCSI_MAX_CONNS_PER_HBA;

	if (FUNC6(hba))
		goto cid_que_err;

	/* SQ/RQ/CQ size can be changed via sysfx interface */
	if (FUNC23(BNX2I_NX2_DEV_57710, &hba->cnic_dev_type)) {
		if (sq_size && sq_size <= BNX2I_5770X_SQ_WQES_MAX)
			hba->max_sqes = sq_size;
		else
			hba->max_sqes = BNX2I_5770X_SQ_WQES_DEFAULT;
	} else {	/* 5706/5708/5709 */
		if (sq_size && sq_size <= BNX2I_570X_SQ_WQES_MAX)
			hba->max_sqes = sq_size;
		else
			hba->max_sqes = BNX2I_570X_SQ_WQES_DEFAULT;
	}

	hba->max_rqes = rq_size;
	hba->max_cqes = hba->max_sqes + rq_size;
	if (FUNC23(BNX2I_NX2_DEV_57710, &hba->cnic_dev_type)) {
		if (hba->max_cqes > BNX2I_5770X_CQ_WQES_MAX)
			hba->max_cqes = BNX2I_5770X_CQ_WQES_MAX;
	} else if (hba->max_cqes > BNX2I_570X_CQ_WQES_MAX)
		hba->max_cqes = BNX2I_570X_CQ_WQES_MAX;

	hba->num_ccell = hba->max_sqes / 2;

	FUNC22(&hba->lock);
	FUNC14(&hba->net_dev_lock);
	FUNC9(&hba->eh_wait);
	if (FUNC23(BNX2I_NX2_DEV_57710, &hba->cnic_dev_type)) {
		hba->hba_shutdown_tmo = 30 * HZ;
		hba->conn_teardown_tmo = 20 * HZ;
		hba->conn_ctx_destroy_tmo = 6 * HZ;
	} else {	/* 5706/5708/5709 */
		hba->hba_shutdown_tmo = 20 * HZ;
		hba->conn_teardown_tmo = 10 * HZ;
		hba->conn_ctx_destroy_tmo = 2 * HZ;
	}

#ifdef CONFIG_32BIT
	spin_lock_init(&hba->stat_lock);
#endif
	FUNC13(&hba->stats, 0, sizeof(struct iscsi_stats_info));

	if (FUNC10(shost, &hba->pcidev->dev))
		goto free_dump_mem;
	return hba;

free_dump_mem:
	FUNC5(hba);
cid_que_err:
	FUNC3(hba);
mp_bdt_mem_err:
	if (hba->regview) {
		FUNC18(hba->pcidev, hba->regview);
		hba->regview = NULL;
	}
ioreg_map_err:
	FUNC16(hba->pcidev);
	FUNC21(shost);
	return NULL;
}