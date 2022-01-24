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
struct sas_task {int /*<<< orphan*/  task_state_lock; int /*<<< orphan*/  task_state_flags; struct hisi_sas_slot* lldd_task; struct domain_device* dev; } ;
struct hisi_sas_slot {int n_elem; int dlvry_queue; int dlvry_queue_slot; int is_internal; int /*<<< orphan*/  ready; struct hisi_sas_cmd_hdr* cmd_hdr; struct hisi_sas_port* port; struct sas_task* task; int /*<<< orphan*/  device_id; int /*<<< orphan*/  entry; int /*<<< orphan*/  delivery; } ;
struct hisi_sas_port {int dummy; } ;
struct hisi_sas_err_record {int dummy; } ;
struct hisi_sas_dq {int wr_point; int id; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct hisi_sas_device {int /*<<< orphan*/  device_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct hisi_sas_cmd_hdr {int dummy; } ;
struct hisi_hba {TYPE_1__* hw; struct hisi_sas_cmd_hdr** cmd_hdr; struct hisi_sas_slot* slot_info; int /*<<< orphan*/  flags; struct device* dev; } ;
struct domain_device {struct asd_sas_port* port; struct hisi_sas_device* lldd_dev; } ;
struct device {int dummy; } ;
struct asd_sas_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* start_delivery ) (struct hisi_sas_dq*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int HISI_SAS_COMMAND_TABLE_SZ ; 
 int HISI_SAS_QUEUE_SLOTS ; 
 int /*<<< orphan*/  HISI_SAS_REJECT_CMD_BIT ; 
 int /*<<< orphan*/  SAS_TASK_AT_INITIATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct hisi_sas_cmd_hdr* FUNC2 (struct hisi_sas_slot*) ; 
 int FUNC3 (struct hisi_hba*,int /*<<< orphan*/ *) ; 
 struct hisi_sas_cmd_hdr* FUNC4 (struct hisi_sas_slot*) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_hba*,struct hisi_sas_slot*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hisi_sas_cmd_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct hisi_sas_dq*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hisi_sas_port* FUNC12 (struct asd_sas_port*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct hisi_hba *hisi_hba, int device_id,
				  struct sas_task *task, int abort_flag,
				  int task_tag, struct hisi_sas_dq *dq)
{
	struct domain_device *device = task->dev;
	struct hisi_sas_device *sas_dev = device->lldd_dev;
	struct device *dev = hisi_hba->dev;
	struct hisi_sas_port *port;
	struct hisi_sas_slot *slot;
	struct asd_sas_port *sas_port = device->port;
	struct hisi_sas_cmd_hdr *cmd_hdr_base;
	int dlvry_queue_slot, dlvry_queue, n_elem = 0, rc, slot_idx;
	unsigned long flags;
	int wr_q_index;

	if (FUNC13(FUNC11(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags)))
		return -EINVAL;

	if (!device->port)
		return -1;

	port = FUNC12(sas_port);

	/* simply get a slot and send abort command */
	rc = FUNC3(hisi_hba, NULL);
	if (rc < 0)
		goto err_out;

	slot_idx = rc;
	slot = &hisi_hba->slot_info[slot_idx];

	FUNC8(&dq->lock, flags);
	wr_q_index = dq->wr_point;
	dq->wr_point = (dq->wr_point + 1) % HISI_SAS_QUEUE_SLOTS;
	FUNC6(&slot->delivery, &dq->list);
	FUNC9(&dq->lock, flags);
	FUNC8(&sas_dev->lock, flags);
	FUNC6(&slot->entry, &sas_dev->list);
	FUNC9(&sas_dev->lock, flags);

	dlvry_queue = dq->id;
	dlvry_queue_slot = wr_q_index;

	slot->device_id = sas_dev->device_id;
	slot->n_elem = n_elem;
	slot->dlvry_queue = dlvry_queue;
	slot->dlvry_queue_slot = dlvry_queue_slot;
	cmd_hdr_base = hisi_hba->cmd_hdr[dlvry_queue];
	slot->cmd_hdr = &cmd_hdr_base[dlvry_queue_slot];
	slot->task = task;
	slot->port = port;
	slot->is_internal = true;
	task->lldd_task = slot;

	FUNC7(slot->cmd_hdr, 0, sizeof(struct hisi_sas_cmd_hdr));
	FUNC7(FUNC2(slot), 0, HISI_SAS_COMMAND_TABLE_SZ);
	FUNC7(FUNC4(slot), 0,
	       sizeof(struct hisi_sas_err_record));

	FUNC5(hisi_hba, slot, device_id,
				      abort_flag, task_tag);

	FUNC8(&task->task_state_lock, flags);
	task->task_state_flags |= SAS_TASK_AT_INITIATOR;
	FUNC9(&task->task_state_lock, flags);
	FUNC0(slot->ready, 1);
	/* send abort command to the chip */
	FUNC8(&dq->lock, flags);
	hisi_hba->hw->start_delivery(dq);
	FUNC9(&dq->lock, flags);

	return 0;

err_out:
	FUNC1(dev, "internal abort task prep: failed[%d]!\n", rc);

	return rc;
}