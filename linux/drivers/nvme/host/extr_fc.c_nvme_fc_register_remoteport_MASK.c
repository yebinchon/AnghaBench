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
struct nvme_fc_remote_port {int port_num; int /*<<< orphan*/  port_state; int /*<<< orphan*/  port_id; int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; int /*<<< orphan*/  port_role; struct nvme_fc_rport* private; int /*<<< orphan*/ * localport; } ;
struct nvme_fc_rport {struct nvme_fc_remote_port remoteport; int /*<<< orphan*/  endp_list; struct nvme_fc_lport* lport; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  act_ctrl_cnt; int /*<<< orphan*/  ref; int /*<<< orphan*/  disc_list; int /*<<< orphan*/  ls_req_list; int /*<<< orphan*/  ctrl_list; } ;
struct nvme_fc_port_info {int /*<<< orphan*/  port_id; int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; int /*<<< orphan*/  port_role; } ;
struct nvme_fc_lport {int /*<<< orphan*/  endp_list; int /*<<< orphan*/  dev; int /*<<< orphan*/  localport; int /*<<< orphan*/  endp_cnt; TYPE_1__* ops; } ;
struct nvme_fc_local_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ remote_priv_sz; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FC_OBJSTATE_ONLINE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nvme_fc_rport*) ; 
 int FUNC2 (struct nvme_fc_rport*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_fc_rport*,struct nvme_fc_port_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_fc_rport*) ; 
 struct nvme_fc_rport* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nvme_fc_lport* FUNC10 (struct nvme_fc_local_port*) ; 
 struct nvme_fc_rport* FUNC11 (struct nvme_fc_lport*,struct nvme_fc_port_info*) ; 
 int /*<<< orphan*/  nvme_fc_lock ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_fc_lport*) ; 
 int /*<<< orphan*/  FUNC13 (struct nvme_fc_lport*) ; 
 int /*<<< orphan*/  FUNC14 (struct nvme_fc_lport*,struct nvme_fc_rport*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC18(struct nvme_fc_local_port *localport,
				struct nvme_fc_port_info *pinfo,
				struct nvme_fc_remote_port **portptr)
{
	struct nvme_fc_lport *lport = FUNC10(localport);
	struct nvme_fc_rport *newrec;
	unsigned long flags;
	int ret, idx;

	if (!FUNC12(lport)) {
		ret = -ESHUTDOWN;
		goto out_reghost_failed;
	}

	/*
	 * look to see if there is already a remoteport that is waiting
	 * for a reconnect (within dev_loss_tmo) with the same WWN's.
	 * If so, transition to it and reconnect.
	 */
	newrec = FUNC11(lport, pinfo);

	/* found an rport, but something about its state is bad */
	if (FUNC1(newrec)) {
		ret = FUNC2(newrec);
		goto out_lport_put;

	/* found existing rport, which was resumed */
	} else if (newrec) {
		FUNC13(lport);
		FUNC3(newrec, pinfo);
		FUNC14(lport, newrec);
		*portptr = &newrec->remoteport;
		return 0;
	}

	/* nothing found - allocate a new remoteport struct */

	newrec = FUNC7((sizeof(*newrec) + lport->ops->remote_priv_sz),
			 GFP_KERNEL);
	if (!newrec) {
		ret = -ENOMEM;
		goto out_lport_put;
	}

	idx = FUNC5(&lport->endp_cnt, 0, 0, GFP_KERNEL);
	if (idx < 0) {
		ret = -ENOSPC;
		goto out_kfree_rport;
	}

	FUNC0(&newrec->endp_list);
	FUNC0(&newrec->ctrl_list);
	FUNC0(&newrec->ls_req_list);
	FUNC0(&newrec->disc_list);
	FUNC8(&newrec->ref);
	FUNC4(&newrec->act_ctrl_cnt, 0);
	FUNC15(&newrec->lock);
	newrec->remoteport.localport = &lport->localport;
	newrec->dev = lport->dev;
	newrec->lport = lport;
	newrec->remoteport.private = &newrec[1];
	newrec->remoteport.port_role = pinfo->port_role;
	newrec->remoteport.node_name = pinfo->node_name;
	newrec->remoteport.port_name = pinfo->port_name;
	newrec->remoteport.port_id = pinfo->port_id;
	newrec->remoteport.port_state = FC_OBJSTATE_ONLINE;
	newrec->remoteport.port_num = idx;
	FUNC3(newrec, pinfo);

	FUNC16(&nvme_fc_lock, flags);
	FUNC9(&newrec->endp_list, &lport->endp_list);
	FUNC17(&nvme_fc_lock, flags);

	FUNC14(lport, newrec);

	*portptr = &newrec->remoteport;
	return 0;

out_kfree_rport:
	FUNC6(newrec);
out_lport_put:
	FUNC13(lport);
out_reghost_failed:
	*portptr = NULL;
	return ret;
}