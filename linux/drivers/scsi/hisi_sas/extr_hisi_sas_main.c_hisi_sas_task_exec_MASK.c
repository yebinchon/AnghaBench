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
typedef  int u32 ;
struct task_status_struct {int /*<<< orphan*/  stat; int /*<<< orphan*/  resp; } ;
struct sas_task {int /*<<< orphan*/  (* task_done ) (struct sas_task*) ;struct task_status_struct task_status; struct domain_device* dev; } ;
struct hisi_sas_tmf_task {int dummy; } ;
struct hisi_sas_dq {int /*<<< orphan*/  lock; } ;
struct hisi_hba {TYPE_1__* hw; int /*<<< orphan*/  sem; int /*<<< orphan*/  flags; struct device* dev; } ;
struct domain_device {scalar_t__ dev_type; struct asd_sas_port* port; } ;
struct device {int dummy; } ;
struct asd_sas_port {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* start_delivery ) (struct hisi_sas_dq*) ;} ;

/* Variables and functions */
 int ECOMM ; 
 int EINVAL ; 
 int /*<<< orphan*/  HISI_SAS_REJECT_CMD_BIT ; 
 int /*<<< orphan*/  SAS_PHY_DOWN ; 
 scalar_t__ SAS_SATA_DEV ; 
 int /*<<< orphan*/  SAS_TASK_UNDELIVERED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct hisi_hba* FUNC1 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sas_task*,struct hisi_sas_dq**,int,struct hisi_sas_tmf_task*,int*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct sas_task*) ; 
 int /*<<< orphan*/  FUNC9 (struct hisi_sas_dq*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct sas_task *task, gfp_t gfp_flags,
			      bool is_tmf, struct hisi_sas_tmf_task *tmf)
{
	u32 rc;
	u32 pass = 0;
	unsigned long flags;
	struct hisi_hba *hisi_hba;
	struct device *dev;
	struct domain_device *device = task->dev;
	struct asd_sas_port *sas_port = device->port;
	struct hisi_sas_dq *dq = NULL;

	if (!sas_port) {
		struct task_status_struct *ts = &task->task_status;

		ts->resp = SAS_TASK_UNDELIVERED;
		ts->stat = SAS_PHY_DOWN;
		/*
		 * libsas will use dev->port, should
		 * not call task_done for sata
		 */
		if (device->dev_type != SAS_SATA_DEV)
			task->task_done(task);
		return -ECOMM;
	}

	hisi_hba = FUNC1(device);
	dev = hisi_hba->dev;

	if (FUNC11(FUNC10(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags))) {
		if (FUNC4())
			return -EINVAL;

		FUNC2(&hisi_hba->sem);
		FUNC12(&hisi_hba->sem);
	}

	/* protect task_prep and start_delivery sequence */
	rc = FUNC3(task, &dq, is_tmf, tmf, &pass);
	if (rc)
		FUNC0(dev, "task exec: failed[%d]!\n", rc);

	if (FUNC5(pass)) {
		FUNC6(&dq->lock, flags);
		hisi_hba->hw->start_delivery(dq);
		FUNC7(&dq->lock, flags);
	}

	return rc;
}