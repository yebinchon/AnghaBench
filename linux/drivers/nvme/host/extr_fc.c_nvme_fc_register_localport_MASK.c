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
struct nvme_fc_port_template {int /*<<< orphan*/  dma_boundary; scalar_t__ local_priv_sz; int /*<<< orphan*/  max_dif_sgl_segments; int /*<<< orphan*/  max_sgl_segments; int /*<<< orphan*/  max_hw_queues; int /*<<< orphan*/  fcp_abort; int /*<<< orphan*/  ls_abort; int /*<<< orphan*/  fcp_io; int /*<<< orphan*/  ls_req; int /*<<< orphan*/  remoteport_delete; int /*<<< orphan*/  localport_delete; } ;
struct nvme_fc_port_info {int /*<<< orphan*/  port_id; int /*<<< orphan*/  port_role; int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; } ;
struct nvme_fc_local_port {int port_num; int /*<<< orphan*/  port_state; int /*<<< orphan*/  port_id; int /*<<< orphan*/  port_role; int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; struct nvme_fc_lport* private; } ;
struct nvme_fc_lport {struct nvme_fc_local_port localport; int /*<<< orphan*/  port_list; int /*<<< orphan*/  endp_cnt; struct device* dev; struct nvme_fc_port_template* ops; int /*<<< orphan*/  act_rport_cnt; int /*<<< orphan*/  ref; int /*<<< orphan*/  endp_list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FC_OBJSTATE_ONLINE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nvme_fc_lport*) ; 
 int FUNC2 (struct nvme_fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_fc_lport*) ; 
 struct nvme_fc_lport* FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nvme_fc_lport* FUNC13 (struct nvme_fc_port_info*,struct nvme_fc_port_template*,struct device*) ; 
 int /*<<< orphan*/  nvme_fc_local_port_cnt ; 
 int /*<<< orphan*/  nvme_fc_lock ; 
 int /*<<< orphan*/  nvme_fc_lport_list ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC16(struct nvme_fc_port_info *pinfo,
			struct nvme_fc_port_template *template,
			struct device *dev,
			struct nvme_fc_local_port **portptr)
{
	struct nvme_fc_lport *newrec;
	unsigned long flags;
	int ret, idx;

	if (!template->localport_delete || !template->remoteport_delete ||
	    !template->ls_req || !template->fcp_io ||
	    !template->ls_abort || !template->fcp_abort ||
	    !template->max_hw_queues || !template->max_sgl_segments ||
	    !template->max_dif_sgl_segments || !template->dma_boundary) {
		ret = -EINVAL;
		goto out_reghost_failed;
	}

	/*
	 * look to see if there is already a localport that had been
	 * deregistered and in the process of waiting for all the
	 * references to fully be removed.  If the references haven't
	 * expired, we can simply re-enable the localport. Remoteports
	 * and controller reconnections should resume naturally.
	 */
	newrec = FUNC13(pinfo, template, dev);

	/* found an lport, but something about its state is bad */
	if (FUNC1(newrec)) {
		ret = FUNC2(newrec);
		goto out_reghost_failed;

	/* found existing lport, which was resumed */
	} else if (newrec) {
		*portptr = &newrec->localport;
		return 0;
	}

	/* nothing found - allocate a new localport struct */

	newrec = FUNC10((sizeof(*newrec) + template->local_priv_sz),
			 GFP_KERNEL);
	if (!newrec) {
		ret = -ENOMEM;
		goto out_reghost_failed;
	}

	idx = FUNC7(&nvme_fc_local_port_cnt, 0, 0, GFP_KERNEL);
	if (idx < 0) {
		ret = -ENOSPC;
		goto out_fail_kfree;
	}

	if (!FUNC5(dev) && dev) {
		ret = -ENODEV;
		goto out_ida_put;
	}

	FUNC0(&newrec->port_list);
	FUNC0(&newrec->endp_list);
	FUNC11(&newrec->ref);
	FUNC3(&newrec->act_rport_cnt, 0);
	newrec->ops = template;
	newrec->dev = dev;
	FUNC6(&newrec->endp_cnt);
	newrec->localport.private = &newrec[1];
	newrec->localport.node_name = pinfo->node_name;
	newrec->localport.port_name = pinfo->port_name;
	newrec->localport.port_role = pinfo->port_role;
	newrec->localport.port_id = pinfo->port_id;
	newrec->localport.port_state = FC_OBJSTATE_ONLINE;
	newrec->localport.port_num = idx;

	FUNC14(&nvme_fc_lock, flags);
	FUNC12(&newrec->port_list, &nvme_fc_lport_list);
	FUNC15(&nvme_fc_lock, flags);

	if (dev)
		FUNC4(dev, template->dma_boundary);

	*portptr = &newrec->localport;
	return 0;

out_ida_put:
	FUNC8(&nvme_fc_local_port_cnt, idx);
out_fail_kfree:
	FUNC9(newrec);
out_reghost_failed:
	*portptr = NULL;

	return ret;
}