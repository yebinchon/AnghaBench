
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fc_rport_identifiers {int roles; int port_id; void* port_name; void* node_name; } ;
struct fc_rport {int maxframe_size; int scsi_target_id; int supported_classes; scalar_t__ dd_data; } ;
struct TYPE_3__ {int sp_bb_data; } ;
struct csio_service_parms {TYPE_2__* clsp; TYPE_1__ csp; } ;
struct csio_rnode {int role; int nport_id; int scsi_id; struct csio_service_parms rn_sparm; struct fc_rport* rport; } ;
struct csio_lnode {int num_reg_rnodes; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_4__ {int cp_class; } ;


 int CSIO_ASSERT (int ) ;
 int CSIO_RNFR_INITIATOR ;
 int CSIO_RNFR_TARGET ;
 int FC_COS_CLASS3 ;
 int FC_COS_UNSPECIFIED ;
 int FC_CPC_VALID ;
 int FC_RPORT_ROLE_FCP_INITIATOR ;
 int FC_RPORT_ROLE_FCP_TARGET ;
 int FC_RPORT_ROLE_UNKNOWN ;
 int csio_ln_dbg (struct csio_lnode*,char*,int ,int ) ;
 int csio_ln_err (struct csio_lnode*,char*,int ) ;
 struct Scsi_Host* csio_ln_to_shost (struct csio_lnode*) ;
 int csio_rn_wwnn (struct csio_rnode*) ;
 int csio_rn_wwpn (struct csio_rnode*) ;
 struct csio_lnode* csio_rnode_to_lnode (struct csio_rnode*) ;
 struct fc_rport* fc_remote_port_add (struct Scsi_Host*,int ,struct fc_rport_identifiers*) ;
 int fc_remote_port_rolechg (struct fc_rport*,int ) ;
 int ntohs (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 void* wwn_to_u64 (int ) ;

void
csio_reg_rnode(struct csio_rnode *rn)
{
 struct csio_lnode *ln = csio_rnode_to_lnode(rn);
 struct Scsi_Host *shost = csio_ln_to_shost(ln);
 struct fc_rport_identifiers ids;
 struct fc_rport *rport;
 struct csio_service_parms *sp;

 ids.node_name = wwn_to_u64(csio_rn_wwnn(rn));
 ids.port_name = wwn_to_u64(csio_rn_wwpn(rn));
 ids.port_id = rn->nport_id;
 ids.roles = FC_RPORT_ROLE_UNKNOWN;

 if (rn->role & CSIO_RNFR_INITIATOR || rn->role & CSIO_RNFR_TARGET) {
  rport = rn->rport;
  CSIO_ASSERT(rport != ((void*)0));
  goto update_role;
 }

 rn->rport = fc_remote_port_add(shost, 0, &ids);
 if (!rn->rport) {
  csio_ln_err(ln, "Failed to register rport = 0x%x.\n",
     rn->nport_id);
  return;
 }

 ln->num_reg_rnodes++;
 rport = rn->rport;
 spin_lock_irq(shost->host_lock);
 *((struct csio_rnode **)rport->dd_data) = rn;
 spin_unlock_irq(shost->host_lock);

 sp = &rn->rn_sparm;
 rport->maxframe_size = ntohs(sp->csp.sp_bb_data);
 if (ntohs(sp->clsp[2].cp_class) & FC_CPC_VALID)
  rport->supported_classes = FC_COS_CLASS3;
 else
  rport->supported_classes = FC_COS_UNSPECIFIED;
update_role:
 if (rn->role & CSIO_RNFR_INITIATOR)
  ids.roles |= FC_RPORT_ROLE_FCP_INITIATOR;
 if (rn->role & CSIO_RNFR_TARGET)
  ids.roles |= FC_RPORT_ROLE_FCP_TARGET;

 if (ids.roles != FC_RPORT_ROLE_UNKNOWN)
  fc_remote_port_rolechg(rport, ids.roles);

 rn->scsi_id = rport->scsi_target_id;

 csio_ln_dbg(ln, "Remote port x%x role 0x%x registered\n",
  rn->nport_id, ids.roles);
}
