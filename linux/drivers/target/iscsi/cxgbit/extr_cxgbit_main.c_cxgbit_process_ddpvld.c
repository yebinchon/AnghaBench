
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxgbit_sock {int tid; } ;
struct cxgbit_lro_pdu_cb {int flags; } ;


 int CPL_RX_ISCSI_DDP_STATUS_DCRC_SHIFT ;
 int CPL_RX_ISCSI_DDP_STATUS_DDP_SHIFT ;
 int CPL_RX_ISCSI_DDP_STATUS_HCRC_SHIFT ;
 int CPL_RX_ISCSI_DDP_STATUS_PAD_SHIFT ;
 int PDUCBF_RX_DATA ;
 int PDUCBF_RX_DATA_DDPD ;
 int PDUCBF_RX_DCRC_ERR ;
 int PDUCBF_RX_HCRC_ERR ;
 int pr_info (char*,int ,int) ;

__attribute__((used)) static void
cxgbit_process_ddpvld(struct cxgbit_sock *csk, struct cxgbit_lro_pdu_cb *pdu_cb,
        u32 ddpvld)
{

 if (ddpvld & (1 << CPL_RX_ISCSI_DDP_STATUS_HCRC_SHIFT)) {
  pr_info("tid 0x%x, status 0x%x, hcrc bad.\n", csk->tid, ddpvld);
  pdu_cb->flags |= PDUCBF_RX_HCRC_ERR;
 }

 if (ddpvld & (1 << CPL_RX_ISCSI_DDP_STATUS_DCRC_SHIFT)) {
  pr_info("tid 0x%x, status 0x%x, dcrc bad.\n", csk->tid, ddpvld);
  pdu_cb->flags |= PDUCBF_RX_DCRC_ERR;
 }

 if (ddpvld & (1 << CPL_RX_ISCSI_DDP_STATUS_PAD_SHIFT))
  pr_info("tid 0x%x, status 0x%x, pad bad.\n", csk->tid, ddpvld);

 if ((ddpvld & (1 << CPL_RX_ISCSI_DDP_STATUS_DDP_SHIFT)) &&
     (!(pdu_cb->flags & PDUCBF_RX_DATA))) {
  pdu_cb->flags |= PDUCBF_RX_DATA_DDPD;
 }
}
