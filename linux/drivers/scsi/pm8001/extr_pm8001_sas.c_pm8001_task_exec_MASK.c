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
typedef  int u32 ;
struct task_status_struct {void* stat; void* resp; } ;
struct sas_task {int task_proto; int num_scatter; int /*<<< orphan*/  data_dir; int /*<<< orphan*/  scatter; int /*<<< orphan*/  task_state_lock; int /*<<< orphan*/  task_state_flags; struct pm8001_ccb_info* lldd_task; int /*<<< orphan*/  (* task_done ) (struct sas_task*) ;struct task_status_struct task_status; struct domain_device* dev; } ;
struct pm8001_tmf_task {int dummy; } ;
struct pm8001_port {int /*<<< orphan*/  port_attached; } ;
struct pm8001_hba_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; struct pm8001_ccb_info* ccb_info; struct pm8001_port* port; scalar_t__ controller_fatal_error; } ;
struct pm8001_device {int /*<<< orphan*/  running_req; } ;
struct pm8001_ccb_info {int n_elem; int ccb_tag; struct pm8001_device* device; struct sas_task* task; } ;
struct domain_device {scalar_t__ dev_type; struct pm8001_device* lldd_dev; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pm8001_device*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 void* SAS_PHY_DOWN ; 
#define  SAS_PROTOCOL_SATA 131 
#define  SAS_PROTOCOL_SMP 130 
#define  SAS_PROTOCOL_SSP 129 
#define  SAS_PROTOCOL_STP 128 
 scalar_t__ SAS_SATA_DEV ; 
 int /*<<< orphan*/  SAS_TASK_AT_INITIATOR ; 
 void* SAS_TASK_UNDELIVERED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct pm8001_hba_info* FUNC5 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct pm8001_hba_info*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pm8001_hba_info*,int) ; 
 int FUNC9 (struct pm8001_hba_info*,struct pm8001_ccb_info*) ; 
 int FUNC10 (struct pm8001_hba_info*,struct pm8001_ccb_info*) ; 
 int FUNC11 (struct pm8001_hba_info*,struct pm8001_ccb_info*) ; 
 int FUNC12 (struct pm8001_hba_info*,struct pm8001_ccb_info*,struct pm8001_tmf_task*) ; 
 size_t FUNC13 (struct domain_device*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (struct sas_task*) ; 
 int /*<<< orphan*/  FUNC20 (struct sas_task*) ; 
 int /*<<< orphan*/  FUNC21 (struct sas_task*) ; 
 int /*<<< orphan*/  FUNC22 (struct sas_task*) ; 

__attribute__((used)) static int FUNC23(struct sas_task *task,
	gfp_t gfp_flags, int is_tmf, struct pm8001_tmf_task *tmf)
{
	struct domain_device *dev = task->dev;
	struct pm8001_hba_info *pm8001_ha;
	struct pm8001_device *pm8001_dev;
	struct pm8001_port *port = NULL;
	struct sas_task *t = task;
	struct pm8001_ccb_info *ccb;
	u32 tag = 0xdeadbeef, rc, n_elem = 0;
	unsigned long flags = 0;

	if (!dev->port) {
		struct task_status_struct *tsm = &t->task_status;
		tsm->resp = SAS_TASK_UNDELIVERED;
		tsm->stat = SAS_PHY_DOWN;
		if (dev->dev_type != SAS_SATA_DEV)
			t->task_done(t);
		return 0;
	}
	pm8001_ha = FUNC5(task->dev);
	if (pm8001_ha->controller_fatal_error) {
		struct task_status_struct *ts = &t->task_status;

		ts->resp = SAS_TASK_UNDELIVERED;
		t->task_done(t);
		return 0;
	}
	FUNC1(pm8001_ha, FUNC6("pm8001_task_exec device \n "));
	FUNC16(&pm8001_ha->lock, flags);
	do {
		dev = t->dev;
		pm8001_dev = dev->lldd_dev;
		port = &pm8001_ha->port[FUNC13(dev)];
		if (FUNC0(pm8001_dev) || !port->port_attached) {
			if (FUNC14(t->task_proto)) {
				struct task_status_struct *ts = &t->task_status;
				ts->resp = SAS_TASK_UNDELIVERED;
				ts->stat = SAS_PHY_DOWN;

				FUNC18(&pm8001_ha->lock, flags);
				t->task_done(t);
				FUNC16(&pm8001_ha->lock, flags);
				continue;
			} else {
				struct task_status_struct *ts = &t->task_status;
				ts->resp = SAS_TASK_UNDELIVERED;
				ts->stat = SAS_PHY_DOWN;
				t->task_done(t);
				continue;
			}
		}
		rc = FUNC7(pm8001_ha, &tag);
		if (rc)
			goto err_out;
		ccb = &pm8001_ha->ccb_info[tag];

		if (!FUNC14(t->task_proto)) {
			if (t->num_scatter) {
				n_elem = FUNC3(pm8001_ha->dev,
					t->scatter,
					t->num_scatter,
					t->data_dir);
				if (!n_elem) {
					rc = -ENOMEM;
					goto err_out_tag;
				}
			}
		} else {
			n_elem = t->num_scatter;
		}

		t->lldd_task = ccb;
		ccb->n_elem = n_elem;
		ccb->ccb_tag = tag;
		ccb->task = t;
		ccb->device = pm8001_dev;
		switch (t->task_proto) {
		case SAS_PROTOCOL_SMP:
			rc = FUNC10(pm8001_ha, ccb);
			break;
		case SAS_PROTOCOL_SSP:
			if (is_tmf)
				rc = FUNC12(pm8001_ha,
					ccb, tmf);
			else
				rc = FUNC11(pm8001_ha, ccb);
			break;
		case SAS_PROTOCOL_SATA:
		case SAS_PROTOCOL_STP:
			rc = FUNC9(pm8001_ha, ccb);
			break;
		default:
			FUNC2(KERN_ERR, pm8001_ha->dev,
				"unknown sas_task proto: 0x%x\n",
				t->task_proto);
			rc = -EINVAL;
			break;
		}

		if (rc) {
			FUNC1(pm8001_ha,
				FUNC6("rc is %x\n", rc));
			goto err_out_tag;
		}
		/* TODO: select normal or high priority */
		FUNC15(&t->task_state_lock);
		t->task_state_flags |= SAS_TASK_AT_INITIATOR;
		FUNC17(&t->task_state_lock);
		pm8001_dev->running_req++;
	} while (0);
	rc = 0;
	goto out_done;

err_out_tag:
	FUNC8(pm8001_ha, tag);
err_out:
	FUNC2(KERN_ERR, pm8001_ha->dev, "pm8001 exec failed[%d]!\n", rc);
	if (!FUNC14(t->task_proto))
		if (n_elem)
			FUNC4(pm8001_ha->dev, t->scatter, t->num_scatter,
				t->data_dir);
out_done:
	FUNC18(&pm8001_ha->lock, flags);
	return rc;
}