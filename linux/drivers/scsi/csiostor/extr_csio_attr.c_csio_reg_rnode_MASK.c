#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fc_rport_identifiers {int /*<<< orphan*/  roles; int /*<<< orphan*/  port_id; void* port_name; void* node_name; } ;
struct fc_rport {int maxframe_size; int /*<<< orphan*/  scsi_target_id; int /*<<< orphan*/  supported_classes; scalar_t__ dd_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  sp_bb_data; } ;
struct csio_service_parms {TYPE_2__* clsp; TYPE_1__ csp; } ;
struct csio_rnode {int role; int /*<<< orphan*/  nport_id; int /*<<< orphan*/  scsi_id; struct csio_service_parms rn_sparm; struct fc_rport* rport; } ;
struct csio_lnode {int /*<<< orphan*/  num_reg_rnodes; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  cp_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CSIO_RNFR_INITIATOR ; 
 int CSIO_RNFR_TARGET ; 
 int /*<<< orphan*/  FC_COS_CLASS3 ; 
 int /*<<< orphan*/  FC_COS_UNSPECIFIED ; 
 int FC_CPC_VALID ; 
 int /*<<< orphan*/  FC_RPORT_ROLE_FCP_INITIATOR ; 
 int /*<<< orphan*/  FC_RPORT_ROLE_FCP_TARGET ; 
 int /*<<< orphan*/  FC_RPORT_ROLE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct csio_lnode*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*,char*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC3 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_rnode*) ; 
 struct csio_lnode* FUNC6 (struct csio_rnode*) ; 
 struct fc_rport* FUNC7 (struct Scsi_Host*,int /*<<< orphan*/ ,struct fc_rport_identifiers*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_rport*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 

void
FUNC13(struct csio_rnode *rn)
{
	struct csio_lnode *ln		= FUNC6(rn);
	struct Scsi_Host *shost		= FUNC3(ln);
	struct fc_rport_identifiers ids;
	struct fc_rport  *rport;
	struct csio_service_parms *sp;

	ids.node_name	= FUNC12(FUNC4(rn));
	ids.port_name	= FUNC12(FUNC5(rn));
	ids.port_id	= rn->nport_id;
	ids.roles	= FC_RPORT_ROLE_UNKNOWN;

	if (rn->role & CSIO_RNFR_INITIATOR || rn->role & CSIO_RNFR_TARGET) {
		rport = rn->rport;
		FUNC0(rport != NULL);
		goto update_role;
	}

	rn->rport = FUNC7(shost, 0, &ids);
	if (!rn->rport) {
		FUNC2(ln, "Failed to register rport = 0x%x.\n",
					rn->nport_id);
		return;
	}

	ln->num_reg_rnodes++;
	rport = rn->rport;
	FUNC10(shost->host_lock);
	*((struct csio_rnode **)rport->dd_data) = rn;
	FUNC11(shost->host_lock);

	sp = &rn->rn_sparm;
	rport->maxframe_size = FUNC9(sp->csp.sp_bb_data);
	if (FUNC9(sp->clsp[2].cp_class) & FC_CPC_VALID)
		rport->supported_classes = FC_COS_CLASS3;
	else
		rport->supported_classes = FC_COS_UNSPECIFIED;
update_role:
	if (rn->role & CSIO_RNFR_INITIATOR)
		ids.roles |= FC_RPORT_ROLE_FCP_INITIATOR;
	if (rn->role & CSIO_RNFR_TARGET)
		ids.roles |= FC_RPORT_ROLE_FCP_TARGET;

	if (ids.roles != FC_RPORT_ROLE_UNKNOWN)
		FUNC8(rport, ids.roles);

	rn->scsi_id = rport->scsi_target_id;

	FUNC1(ln, "Remote port x%x role 0x%x registered\n",
		rn->nport_id, ids.roles);
}