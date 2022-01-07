
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct fw_fcoe_vnp_cmd {scalar_t__ clsp_word_0_1; scalar_t__ cmn_srv_parms; int * vnport_wwpn; int * vnport_wwnn; int * vnport_mac; int alloc_to_len16; } ;
struct fc_els_cssp {int cp_rdfs; int cp_recip; int cp_init; int cp_class; } ;
struct fc_els_csp {int sp_e_d_tov; int sp_r_a_tov; int sp_bb_data; int sp_features; int sp_bb_cred; int sp_lo_ver; int sp_hi_ver; } ;
struct csio_mb {scalar_t__ mb; scalar_t__ priv; } ;
struct TYPE_4__ {int sp_e_d_tov; int sp_r_a_tov; int sp_bb_data; int sp_features; int sp_bb_cred; int sp_lo_ver; int sp_hi_ver; } ;
struct TYPE_6__ {TYPE_2__* clsp; TYPE_1__ csp; } ;
struct csio_lnode {int nport_id; TYPE_3__ ln_sparm; int * mac; } ;
struct csio_hw {int mb_mempool; int lock; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;
typedef int __be32 ;
struct TYPE_5__ {int cp_rdfs; int cp_recip; int cp_init; int cp_class; } ;


 int CSIO_LN_FC_ATTRIB_UPDATE ;
 int FW_CMD_RETVAL_G (int) ;
 int FW_SUCCESS ;
 int csio_err (struct csio_hw*,char*,int) ;
 int * csio_ln_wwnn (struct csio_lnode*) ;
 int * csio_ln_wwpn (struct csio_lnode*) ;
 int csio_lnode_async_event (struct csio_lnode*,int ) ;
 int memcpy (int *,int *,int) ;
 int mempool_free (struct csio_mb*,int ) ;
 int ntohl (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
csio_ln_vnp_read_cbfn(struct csio_hw *hw, struct csio_mb *mbp)
{
 struct csio_lnode *ln = ((struct csio_lnode *)mbp->priv);
 struct fw_fcoe_vnp_cmd *rsp = (struct fw_fcoe_vnp_cmd *)(mbp->mb);
 struct fc_els_csp *csp;
 struct fc_els_cssp *clsp;
 enum fw_retval retval;
 __be32 nport_id;

 retval = FW_CMD_RETVAL_G(ntohl(rsp->alloc_to_len16));
 if (retval != FW_SUCCESS) {
  csio_err(hw, "FCOE VNP read cmd returned error:0x%x\n", retval);
  mempool_free(mbp, hw->mb_mempool);
  return;
 }

 spin_lock_irq(&hw->lock);

 memcpy(ln->mac, rsp->vnport_mac, sizeof(ln->mac));
 memcpy(&nport_id, &rsp->vnport_mac[3], sizeof(uint8_t)*3);
 ln->nport_id = ntohl(nport_id);
 ln->nport_id = ln->nport_id >> 8;







 memcpy(csio_ln_wwnn(ln), rsp->vnport_wwnn, 8);
 memcpy(csio_ln_wwpn(ln), rsp->vnport_wwpn, 8);


 csp = (struct fc_els_csp *)rsp->cmn_srv_parms;
 ln->ln_sparm.csp.sp_hi_ver = csp->sp_hi_ver;
 ln->ln_sparm.csp.sp_lo_ver = csp->sp_lo_ver;
 ln->ln_sparm.csp.sp_bb_cred = csp->sp_bb_cred;
 ln->ln_sparm.csp.sp_features = csp->sp_features;
 ln->ln_sparm.csp.sp_bb_data = csp->sp_bb_data;
 ln->ln_sparm.csp.sp_r_a_tov = csp->sp_r_a_tov;
 ln->ln_sparm.csp.sp_e_d_tov = csp->sp_e_d_tov;


 clsp = (struct fc_els_cssp *)rsp->clsp_word_0_1;
 ln->ln_sparm.clsp[2].cp_class = clsp->cp_class;
 ln->ln_sparm.clsp[2].cp_init = clsp->cp_init;
 ln->ln_sparm.clsp[2].cp_recip = clsp->cp_recip;
 ln->ln_sparm.clsp[2].cp_rdfs = clsp->cp_rdfs;

 spin_unlock_irq(&hw->lock);

 mempool_free(mbp, hw->mb_mempool);


 csio_lnode_async_event(ln, CSIO_LN_FC_ATTRIB_UPDATE);
}
