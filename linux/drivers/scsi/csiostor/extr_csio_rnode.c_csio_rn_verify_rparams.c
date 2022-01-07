
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct fcoe_rdev_entry {int vft_to_qos; int rcv_fr_sz; int wwpn; int wwnn; int enh_disc_to_tgt; int event_cause; int rd_xfer_rdy_to_rport_type; int * r_id; } ;
struct TYPE_4__ {int sp_bb_data; } ;
struct TYPE_6__ {TYPE_2__* clsp; TYPE_1__ csp; } ;
struct csio_rnode {int nport_id; TYPE_3__ rn_sparm; int role; int fcp_flags; } ;
struct csio_lnode {int flags; } ;
typedef int __be32 ;
struct TYPE_5__ {int cp_class; } ;


 int CSIO_DID_MASK ;
 int CSIO_LNF_NPIVSUPP ;
 int CSIO_RNFR_FABRIC ;
 int CSIO_RNFR_INITIATOR ;
 int CSIO_RNFR_NPORT ;
 int CSIO_RNFR_NS ;
 int CSIO_RNFR_TARGET ;
 int EINVAL ;

 int FCP_SPPF_CONF_COMPL ;
 int FCP_SPPF_OVLY_ALLOW ;
 int FCP_SPPF_RETRY ;
 int FC_CPC_VALID ;
 int FC_FID_DIR_SERV ;
 int FC_FID_FLOGI ;


 int FW_RDEV_WR_CLASS_GET (int ) ;
 int FW_RDEV_WR_CONF_CMPL_GET (int ) ;
 int FW_RDEV_WR_INI_GET (int ) ;
 int FW_RDEV_WR_NPIV_GET (int ) ;
 int FW_RDEV_WR_RETRY_GET (int ) ;
 int FW_RDEV_WR_RPORT_TYPE_GET (int ) ;
 int FW_RDEV_WR_TASK_RETRY_ID_GET (int ) ;
 int FW_RDEV_WR_TGT_GET (int ) ;

 int PRLI_ACC_RCVD ;
 int PRLI_RCVD ;


 int csio_ln_err (struct csio_lnode*,char*,int ,...) ;
 int csio_rn_flowid (struct csio_rnode*) ;
 int csio_rn_wwnn (struct csio_rnode*) ;
 int csio_rn_wwpn (struct csio_rnode*) ;
 int htons (int ) ;
 int memcmp (int ,int*,int) ;
 int memcpy (int ,int ,int) ;
 int memset (int*,int ,int) ;
 int ntohl (int ) ;

__attribute__((used)) static int
csio_rn_verify_rparams(struct csio_lnode *ln, struct csio_rnode *rn,
   struct fcoe_rdev_entry *rdevp)
{
 uint8_t null[8];
 uint8_t rport_type;
 uint8_t fc_class;
 __be32 *did;

 did = (__be32 *) &rdevp->r_id[0];
 rport_type =
  FW_RDEV_WR_RPORT_TYPE_GET(rdevp->rd_xfer_rdy_to_rport_type);
 switch (rport_type) {
 case 131:
  rn->role = CSIO_RNFR_FABRIC;
  if (((ntohl(*did) >> 8) & CSIO_DID_MASK) != FC_FID_FLOGI) {
   csio_ln_err(ln, "ssni:x%x invalid fabric portid\n",
    csio_rn_flowid(rn));
   return -EINVAL;
  }

  if (FW_RDEV_WR_NPIV_GET(rdevp->vft_to_qos))
   ln->flags |= CSIO_LNF_NPIVSUPP;

  break;

 case 130:
  rn->role = CSIO_RNFR_NS;
  if (((ntohl(*did) >> 8) & CSIO_DID_MASK) != FC_FID_DIR_SERV) {
   csio_ln_err(ln, "ssni:x%x invalid fabric portid\n",
    csio_rn_flowid(rn));
   return -EINVAL;
  }
  break;

 case 129:
 case 128:
  rn->role = CSIO_RNFR_NPORT;
  if (rdevp->event_cause == PRLI_ACC_RCVD ||
   rdevp->event_cause == PRLI_RCVD) {
   if (FW_RDEV_WR_TASK_RETRY_ID_GET(
       rdevp->enh_disc_to_tgt))
    rn->fcp_flags |= FCP_SPPF_OVLY_ALLOW;

   if (FW_RDEV_WR_RETRY_GET(rdevp->enh_disc_to_tgt))
    rn->fcp_flags |= FCP_SPPF_RETRY;

   if (FW_RDEV_WR_CONF_CMPL_GET(rdevp->enh_disc_to_tgt))
    rn->fcp_flags |= FCP_SPPF_CONF_COMPL;

   if (FW_RDEV_WR_TGT_GET(rdevp->enh_disc_to_tgt))
    rn->role |= CSIO_RNFR_TARGET;

   if (FW_RDEV_WR_INI_GET(rdevp->enh_disc_to_tgt))
    rn->role |= CSIO_RNFR_INITIATOR;
  }

  break;

 case 132:
 case 133:
  rn->role = 0;
  break;

 default:
  csio_ln_err(ln, "ssni:x%x invalid rport type recv x%x\n",
   csio_rn_flowid(rn), rport_type);
  return -EINVAL;
 }


 if (rport_type == 128 || rport_type == 130) {
  memset(null, 0, 8);
  if (!memcmp(rdevp->wwnn, null, 8)) {
   csio_ln_err(ln,
        "ssni:x%x invalid wwnn received from"
        " rport did:x%x\n",
        csio_rn_flowid(rn),
        (ntohl(*did) & CSIO_DID_MASK));
   return -EINVAL;
  }

  if (!memcmp(rdevp->wwpn, null, 8)) {
   csio_ln_err(ln,
        "ssni:x%x invalid wwpn received from"
        " rport did:x%x\n",
        csio_rn_flowid(rn),
        (ntohl(*did) & CSIO_DID_MASK));
   return -EINVAL;
  }

 }


 rn->nport_id = (ntohl(*did) >> 8) & CSIO_DID_MASK;
 memcpy(csio_rn_wwnn(rn), rdevp->wwnn, 8);
 memcpy(csio_rn_wwpn(rn), rdevp->wwpn, 8);
 rn->rn_sparm.csp.sp_bb_data = rdevp->rcv_fr_sz;
 fc_class = FW_RDEV_WR_CLASS_GET(rdevp->vft_to_qos);
 rn->rn_sparm.clsp[fc_class - 1].cp_class = htons(FC_CPC_VALID);

 return 0;
}
