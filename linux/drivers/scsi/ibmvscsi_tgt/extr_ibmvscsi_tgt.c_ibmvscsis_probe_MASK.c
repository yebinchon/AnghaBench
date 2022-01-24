#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct vio_device_id {int dummy; } ;
struct vio_dev {char* name; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  unit_address; } ;
struct TYPE_11__ {struct scsi_info* ldata; } ;
struct TYPE_10__ {long partition_number; } ;
struct TYPE_9__ {int /*<<< orphan*/  unit_id; int /*<<< orphan*/  partition_num; int /*<<< orphan*/  partition_name; TYPE_2__* window; } ;
struct TYPE_7__ {char* tport_name; } ;
struct scsi_info {char* eye; int /*<<< orphan*/  list; TYPE_5__ target; int /*<<< orphan*/  work_task; struct scsi_info* map_buf; scalar_t__ map_ioba; int /*<<< orphan*/  work_q; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; int /*<<< orphan*/  unconfig; int /*<<< orphan*/  wait_idle; TYPE_4__ client_data; TYPE_3__ dds; int /*<<< orphan*/  intr_lock; int /*<<< orphan*/  request_limit; TYPE_1__ tport; int /*<<< orphan*/  active_q; int /*<<< orphan*/  waiting_rsp; int /*<<< orphan*/  schedule_q; struct vio_dev* dma_dev; } ;
struct TYPE_8__ {long liobn; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  H_GET_PARTNER_INFO ; 
 long H_SUCCESS ; 
 int IBMVSCSIS_NAMELEN ; 
 int /*<<< orphan*/  INITIAL_SRP_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t LOCAL ; 
 int PAGE_SIZE ; 
 size_t REMOTE ; 
 int /*<<< orphan*/  SRP_MAX_IU_LEN ; 
 int /*<<< orphan*/  WAIT_ENABLED ; 
 long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct scsi_info*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct scsi_info*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 long FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct scsi_info*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct scsi_info*) ; 
 int FUNC14 (struct scsi_info*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_info*) ; 
 int /*<<< orphan*/  ibmvscsis_dev_list ; 
 int /*<<< orphan*/  ibmvscsis_dev_lock ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct scsi_info*) ; 
 int /*<<< orphan*/  ibmvscsis_handle_crq ; 
 int /*<<< orphan*/  ibmvscsis_interrupt ; 
 int /*<<< orphan*/  FUNC18 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct scsi_info*) ; 
 void* FUNC21 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  partition_name ; 
 int /*<<< orphan*/  partition_number ; 
 int FUNC24 (struct scsi_info*) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int FUNC30 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC35(struct vio_dev *vdev,
			   const struct vio_device_id *id)
{
	struct scsi_info *vscsi;
	int rc = 0;
	long hrc = 0;
	char wq_name[24];

	vscsi = FUNC21(sizeof(*vscsi), GFP_KERNEL);
	if (!vscsi) {
		rc = -ENOMEM;
		FUNC5(&vdev->dev, "probe: allocation of adapter failed\n");
		return rc;
	}

	vscsi->dma_dev = vdev;
	vscsi->dev = vdev->dev;
	FUNC0(&vscsi->schedule_q);
	FUNC0(&vscsi->waiting_rsp);
	FUNC0(&vscsi->active_q);

	FUNC26(vscsi->tport.tport_name, IBMVSCSIS_NAMELEN, "%s",
		 FUNC6(&vdev->dev));

	FUNC4(&vscsi->dev, "probe tport_name: %s\n", vscsi->tport.tport_name);

	rc = FUNC24(vscsi);
	if (rc)
		goto free_adapter;
	FUNC4(&vscsi->dev, "Probe: liobn 0x%x, riobn 0x%x\n",
		vscsi->dds.window[LOCAL].liobn,
		vscsi->dds.window[REMOTE].liobn);

	FUNC26(vscsi->eye, sizeof(vscsi->eye), "VSCSI %s", vdev->name);

	vscsi->dds.unit_id = vdev->unit_address;
	FUNC32(vscsi->dds.partition_name, partition_name,
		sizeof(vscsi->dds.partition_name));
	vscsi->dds.partition_num = partition_number;

	FUNC27(&ibmvscsis_dev_lock);
	FUNC22(&vscsi->list, &ibmvscsis_dev_list);
	FUNC29(&ibmvscsis_dev_lock);

	/*
	 * TBD: How do we determine # of cmds to request?  Do we know how
	 * many "children" we have?
	 */
	vscsi->request_limit = INITIAL_SRP_LIMIT;
	rc = FUNC30(&vscsi->target, &vdev->dev, vscsi->request_limit,
			      SRP_MAX_IU_LEN);
	if (rc)
		goto rem_list;

	vscsi->target.ldata = vscsi;

	rc = FUNC12(vscsi, vscsi->request_limit);
	if (rc) {
		FUNC5(&vscsi->dev, "alloc_cmds failed, rc %d, num %d\n",
			rc, vscsi->request_limit);
		goto free_target;
	}

	/*
	 * Note: the lock is used in freeing timers, so must initialize
	 * first so that ordering in case of error is correct.
	 */
	FUNC28(&vscsi->intr_lock);

	rc = FUNC13(vscsi);
	if (rc) {
		FUNC5(&vscsi->dev, "probe: alloctimer failed, rc %d\n", rc);
		goto free_cmds;
	}

	rc = FUNC14(vscsi, 256);
	if (rc) {
		FUNC5(&vscsi->dev, "probe: create_command_q failed, rc %d\n",
			rc);
		goto free_timer;
	}

	vscsi->map_buf = FUNC21(PAGE_SIZE, GFP_KERNEL);
	if (!vscsi->map_buf) {
		rc = -ENOMEM;
		FUNC5(&vscsi->dev, "probe: allocating cmd buffer failed\n");
		goto destroy_queue;
	}

	vscsi->map_ioba = FUNC8(&vdev->dev, vscsi->map_buf, PAGE_SIZE,
					 DMA_BIDIRECTIONAL);
	if (FUNC9(&vdev->dev, vscsi->map_ioba)) {
		rc = -ENOMEM;
		FUNC5(&vscsi->dev, "probe: error mapping command buffer\n");
		goto free_buf;
	}

	hrc = FUNC11(vscsi->dds.unit_id, H_GET_PARTNER_INFO,
		       (u64)vscsi->map_ioba | ((u64)PAGE_SIZE << 32), 0, 0, 0,
		       0);
	if (hrc == H_SUCCESS)
		vscsi->client_data.partition_number =
			FUNC1(*(u64 *)vscsi->map_buf);
	/*
	 * We expect the VIOCTL to fail if we're configured as "any
	 * client can connect" and the client isn't activated yet.
	 * We'll make the call again when he sends an init msg.
	 */
	FUNC4(&vscsi->dev, "probe hrc %ld, client partition num %d\n",
		hrc, vscsi->client_data.partition_number);

	FUNC33(&vscsi->work_task, ibmvscsis_handle_crq,
		     (unsigned long)vscsi);

	FUNC19(&vscsi->wait_idle);
	FUNC19(&vscsi->unconfig);

	FUNC26(wq_name, 24, "ibmvscsis%s", FUNC6(&vdev->dev));
	vscsi->work_q = FUNC2(wq_name);
	if (!vscsi->work_q) {
		rc = -ENOMEM;
		FUNC5(&vscsi->dev, "create_workqueue failed\n");
		goto unmap_buf;
	}

	rc = FUNC25(vdev->irq, ibmvscsis_interrupt, 0, "ibmvscsis", vscsi);
	if (rc) {
		rc = -EPERM;
		FUNC5(&vscsi->dev, "probe: request_irq failed, rc %d\n", rc);
		goto destroy_WQ;
	}

	vscsi->state = WAIT_ENABLED;

	FUNC7(&vdev->dev, vscsi);

	return 0;

destroy_WQ:
	FUNC3(vscsi->work_q);
unmap_buf:
	FUNC10(&vdev->dev, vscsi->map_ioba, PAGE_SIZE,
			 DMA_BIDIRECTIONAL);
free_buf:
	FUNC20(vscsi->map_buf);
destroy_queue:
	FUNC34(&vscsi->work_task);
	FUNC18(vscsi);
	FUNC15(vscsi);
free_timer:
	FUNC17(vscsi);
free_cmds:
	FUNC16(vscsi);
free_target:
	FUNC31(&vscsi->target);
rem_list:
	FUNC27(&ibmvscsis_dev_lock);
	FUNC23(&vscsi->list);
	FUNC29(&ibmvscsis_dev_lock);
free_adapter:
	FUNC20(vscsi);

	return rc;
}