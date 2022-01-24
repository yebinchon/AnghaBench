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
struct wq_enet_desc {int dummy; } ;
struct snic_fw_req {int dummy; } ;
struct TYPE_2__ {int wq_enet_desc_count; int /*<<< orphan*/  intr_timer_type; int /*<<< orphan*/  intr_timer; } ;
struct snic {unsigned int wq_count; int cq_count; unsigned int intr_count; unsigned int err_intr_offset; int /*<<< orphan*/  vdev; int /*<<< orphan*/  shost; int /*<<< orphan*/  stats; TYPE_1__ config; int /*<<< orphan*/ * intr; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * wq; } ;
struct cq_enet_wq_desc {int dummy; } ;
typedef  enum vnic_dev_intr_mode { ____Placeholder_vnic_dev_intr_mode } vnic_dev_intr_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int VNIC_DEV_INTR_MODE_INTX ; 
 int VNIC_DEV_INTR_MODE_MSI ; 
 int VNIC_DEV_INTR_MODE_MSIX ; 
 int /*<<< orphan*/  FUNC3 (struct snic*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int) ; 

int
FUNC13(struct snic *snic)
{
	enum vnic_dev_intr_mode intr_mode;
	unsigned int mask_on_assertion;
	unsigned int intr_offset;
	unsigned int err_intr_enable;
	unsigned int err_intr_offset;
	unsigned int i;
	int ret;

	intr_mode = FUNC6(snic->vdev);

	FUNC2("vNIC interrupt mode: %s\n",
		  ((intr_mode == VNIC_DEV_INTR_MODE_INTX) ?
		   "Legacy PCI INTx" :
		   ((intr_mode == VNIC_DEV_INTR_MODE_MSI) ?
		    "MSI" :
		    ((intr_mode == VNIC_DEV_INTR_MODE_MSIX) ?
		     "MSI-X" : "Unknown"))));

	/* only MSI-X is supported */
	FUNC0(intr_mode != VNIC_DEV_INTR_MODE_MSIX);

	FUNC2("wq %d cq %d intr %d\n", snic->wq_count,
		  snic->cq_count,
		  snic->intr_count);


	/* Allocate WQs used for SCSI IOs */
	for (i = 0; i < snic->wq_count; i++) {
		ret = FUNC11(snic->vdev,
				     &snic->wq[i],
				     i,
				     snic->config.wq_enet_desc_count,
				     sizeof(struct wq_enet_desc));
		if (ret)
			goto error_cleanup;
	}

	/* CQ for each WQ */
	for (i = 0; i < snic->wq_count; i++) {
		ret = FUNC4(snic->vdev,
				     &snic->cq[i],
				     i,
				     snic->config.wq_enet_desc_count,
				     sizeof(struct cq_enet_wq_desc));
		if (ret)
			goto error_cleanup;
	}

	FUNC0(snic->cq_count != 2 * snic->wq_count);
	/* CQ for FW TO host */
	for (i = snic->wq_count; i < snic->cq_count; i++) {
		ret = FUNC4(snic->vdev,
				     &snic->cq[i],
				     i,
				     (snic->config.wq_enet_desc_count * 3),
				     sizeof(struct snic_fw_req));
		if (ret)
			goto error_cleanup;
	}

	for (i = 0; i < snic->intr_count; i++) {
		ret = FUNC9(snic->vdev, &snic->intr[i], i);
		if (ret)
			goto error_cleanup;
	}

	/*
	 * Init WQ Resources.
	 * WQ[0 to n] points to CQ[0 to n-1]
	 * firmware to host comm points to CQ[n to m+1]
	 */
	err_intr_enable = 1;
	err_intr_offset = snic->err_intr_offset;

	for (i = 0; i < snic->wq_count; i++) {
		FUNC12(&snic->wq[i],
			      i,
			      err_intr_enable,
			      err_intr_offset);
	}

	for (i = 0; i < snic->cq_count; i++) {
		intr_offset = i;

		FUNC5(&snic->cq[i],
			      0 /* flow_control_enable */,
			      1 /* color_enable */,
			      0 /* cq_head */,
			      0 /* cq_tail */,
			      1 /* cq_tail_color */,
			      1 /* interrupt_enable */,
			      1 /* cq_entry_enable */,
			      0 /* cq_message_enable */,
			      intr_offset,
			      0 /* cq_message_addr */);
	}

	/*
	 * Init INTR resources
	 * Assumption : snic is always in MSI-X mode
	 */
	FUNC0(intr_mode != VNIC_DEV_INTR_MODE_MSIX);
	mask_on_assertion = 1;

	for (i = 0; i < snic->intr_count; i++) {
		FUNC10(&snic->intr[i],
				snic->config.intr_timer,
				snic->config.intr_timer_type,
				mask_on_assertion);
	}

	/* init the stats memory by making the first call here */
	ret = FUNC8(snic->vdev, &snic->stats);
	if (ret) {
		FUNC1(snic->shost,
			      "svnic_dev_stats_dump failed - x%x\n",
			      ret);
		goto error_cleanup;
	}

	/* Clear LIF stats */
	FUNC7(snic->vdev);
	ret = 0;

	return ret;

error_cleanup:
	FUNC3(snic);

	return ret;
}