#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct csio_lnode {int dev_num; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_ssns; } ;
struct csio_hw {TYPE_2__* pdev; struct csio_lnode* rln; TYPE_1__ fres_info; } ;
struct Scsi_Host {int host_no; int this_id; int unique_id; int max_cmd_len; int /*<<< orphan*/  transportt; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_id; int /*<<< orphan*/  can_queue; } ;
struct TYPE_8__ {void* cmd_per_lun; } ;
struct TYPE_7__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_MAX_LUN ; 
 int /*<<< orphan*/  CSIO_MAX_QUEUE ; 
 int /*<<< orphan*/  csio_fcoe_rnodes ; 
 TYPE_3__ csio_fcoe_shost_template ; 
 TYPE_3__ csio_fcoe_shost_vport_template ; 
 int /*<<< orphan*/  csio_fcoe_transport ; 
 int /*<<< orphan*/  csio_fcoe_transport_vport ; 
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*) ; 
 scalar_t__ FUNC1 (struct csio_lnode*,struct csio_hw*,struct csio_lnode*) ; 
 void* csio_lun_qdepth ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct Scsi_Host*,struct device*,struct device*) ; 
 struct Scsi_Host* FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 struct csio_lnode* FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  uint32_t ; 

struct csio_lnode *
FUNC8(struct csio_hw *hw, struct device *dev,
		  bool probe, struct csio_lnode *pln)
{
	struct Scsi_Host  *shost = NULL;
	struct csio_lnode *ln;

	csio_fcoe_shost_template.cmd_per_lun = csio_lun_qdepth;
	csio_fcoe_shost_vport_template.cmd_per_lun = csio_lun_qdepth;

	/*
	 * hw->pdev is the physical port's PCI dev structure,
	 * which will be different from the NPIV dev structure.
	 */
	if (dev == &hw->pdev->dev)
		shost = FUNC5(
				&csio_fcoe_shost_template,
				sizeof(struct csio_lnode));
	else
		shost = FUNC5(
				&csio_fcoe_shost_vport_template,
				sizeof(struct csio_lnode));

	if (!shost)
		goto err;

	ln = FUNC7(shost);
	FUNC2(ln, 0, sizeof(struct csio_lnode));

	/* Link common lnode to this lnode */
	ln->dev_num = (shost->host_no << 16);

	shost->can_queue = CSIO_MAX_QUEUE;
	shost->this_id = -1;
	shost->unique_id = shost->host_no;
	shost->max_cmd_len = 16; /* Max CDB length supported */
	shost->max_id = FUNC3(uint32_t, csio_fcoe_rnodes,
			      hw->fres_info.max_ssns);
	shost->max_lun = CSIO_MAX_LUN;
	if (dev == &hw->pdev->dev)
		shost->transportt = csio_fcoe_transport;
	else
		shost->transportt = csio_fcoe_transport_vport;

	/* root lnode */
	if (!hw->rln)
		hw->rln = ln;

	/* Other initialization here: Common, Transport specific */
	if (FUNC1(ln, hw, pln))
		goto err_shost_put;

	if (FUNC4(shost, dev, &hw->pdev->dev))
		goto err_lnode_exit;

	return ln;

err_lnode_exit:
	FUNC0(ln);
err_shost_put:
	FUNC6(shost);
err:
	return NULL;
}