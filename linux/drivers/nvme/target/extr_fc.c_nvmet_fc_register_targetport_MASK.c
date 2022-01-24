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
struct nvmet_fc_target_port {int port_num; int /*<<< orphan*/  port_id; struct nvmet_fc_tgtport* private; int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; } ;
struct nvmet_fc_tgtport {struct nvmet_fc_target_port fc_target_port; int /*<<< orphan*/  tgt_list; scalar_t__ max_sg_cnt; int /*<<< orphan*/  assoc_cnt; int /*<<< orphan*/  ref; int /*<<< orphan*/  assoc_list; int /*<<< orphan*/  ls_busylist; int /*<<< orphan*/  ls_list; int /*<<< orphan*/  lock; struct nvmet_fc_target_template* ops; struct device* dev; } ;
struct nvmet_fc_target_template {scalar_t__ max_sgl_segments; scalar_t__ target_priv_sz; int /*<<< orphan*/  dma_boundary; int /*<<< orphan*/  max_dif_sgl_segments; int /*<<< orphan*/  max_hw_queues; int /*<<< orphan*/  targetport_delete; int /*<<< orphan*/  fcp_req_release; int /*<<< orphan*/  fcp_abort; int /*<<< orphan*/  fcp_op; int /*<<< orphan*/  xmt_ls_rsp; } ;
struct nvmet_fc_port_info {int /*<<< orphan*/  port_id; int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_fc_tgtport*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct nvmet_fc_tgtport* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct nvmet_fc_tgtport*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvmet_fc_tgtport*) ; 
 int /*<<< orphan*/  nvmet_fc_target_list ; 
 int /*<<< orphan*/  nvmet_fc_tgtlock ; 
 int /*<<< orphan*/  nvmet_fc_tgtport_cnt ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC15(struct nvmet_fc_port_info *pinfo,
			struct nvmet_fc_target_template *template,
			struct device *dev,
			struct nvmet_fc_target_port **portptr)
{
	struct nvmet_fc_tgtport *newrec;
	unsigned long flags;
	int ret, idx;

	if (!template->xmt_ls_rsp || !template->fcp_op ||
	    !template->fcp_abort ||
	    !template->fcp_req_release || !template->targetport_delete ||
	    !template->max_hw_queues || !template->max_sgl_segments ||
	    !template->max_dif_sgl_segments || !template->dma_boundary) {
		ret = -EINVAL;
		goto out_regtgt_failed;
	}

	newrec = FUNC7((sizeof(*newrec) + template->target_priv_sz),
			 GFP_KERNEL);
	if (!newrec) {
		ret = -ENOMEM;
		goto out_regtgt_failed;
	}

	idx = FUNC3(&nvmet_fc_tgtport_cnt, 0, 0, GFP_KERNEL);
	if (idx < 0) {
		ret = -ENOSPC;
		goto out_fail_kfree;
	}

	if (!FUNC1(dev) && dev) {
		ret = -ENODEV;
		goto out_ida_put;
	}

	newrec->fc_target_port.node_name = pinfo->node_name;
	newrec->fc_target_port.port_name = pinfo->port_name;
	newrec->fc_target_port.private = &newrec[1];
	newrec->fc_target_port.port_id = pinfo->port_id;
	newrec->fc_target_port.port_num = idx;
	FUNC0(&newrec->tgt_list);
	newrec->dev = dev;
	newrec->ops = template;
	FUNC12(&newrec->lock);
	FUNC0(&newrec->ls_list);
	FUNC0(&newrec->ls_busylist);
	FUNC0(&newrec->assoc_list);
	FUNC6(&newrec->ref);
	FUNC2(&newrec->assoc_cnt);
	newrec->max_sg_cnt = template->max_sgl_segments;

	ret = FUNC9(newrec);
	if (ret) {
		ret = -ENOMEM;
		goto out_free_newrec;
	}

	FUNC10(newrec);

	FUNC13(&nvmet_fc_tgtlock, flags);
	FUNC8(&newrec->tgt_list, &nvmet_fc_target_list);
	FUNC14(&nvmet_fc_tgtlock, flags);

	*portptr = &newrec->fc_target_port;
	return 0;

out_free_newrec:
	FUNC11(dev);
out_ida_put:
	FUNC4(&nvmet_fc_tgtport_cnt, idx);
out_fail_kfree:
	FUNC5(newrec);
out_regtgt_failed:
	*portptr = NULL;
	return ret;
}