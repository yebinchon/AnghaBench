
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bfi_fcxp_send_rsp_s {scalar_t__ req_status; int fchs; void* residue_len; void* rsp_len; int fcxp_tag; } ;
struct bfa_s {int dummy; } ;
struct bfa_fcxp_s {scalar_t__ rsp_status; int (* send_cbfn ) (int *,struct bfa_fcxp_s*,int ,scalar_t__,void*,void*,int *) ;int hcb_qe; int rsp_fchs; void* residue_len; void* rsp_len; int send_cbarg; int * caller; } ;
struct bfa_fcxp_mod_s {struct bfa_s* bfa; } ;


 struct bfa_fcxp_s* BFA_FCXP_FROM_TAG (struct bfa_fcxp_mod_s*,int) ;
 struct bfa_fcxp_mod_s* BFA_FCXP_MOD (struct bfa_s*) ;
 scalar_t__ BFA_STATUS_OK ;
 int WARN_ON (int ) ;
 int __bfa_fcxp_send_cbfn ;
 int be16_to_cpu (int ) ;
 void* be32_to_cpu (void*) ;
 int bfa_cb_queue (struct bfa_s*,int *,int ,struct bfa_fcxp_s*) ;
 int bfa_fcxp_free (struct bfa_fcxp_s*) ;
 int bfa_trc (struct bfa_s*,int) ;
 int hal_fcxp_rx_plog (struct bfa_s*,struct bfa_fcxp_s*,struct bfi_fcxp_send_rsp_s*) ;
 int stub1 (int *,struct bfa_fcxp_s*,int ,scalar_t__,void*,void*,int *) ;

__attribute__((used)) static void
hal_fcxp_send_comp(struct bfa_s *bfa, struct bfi_fcxp_send_rsp_s *fcxp_rsp)
{
 struct bfa_fcxp_mod_s *mod = BFA_FCXP_MOD(bfa);
 struct bfa_fcxp_s *fcxp;
 u16 fcxp_tag = be16_to_cpu(fcxp_rsp->fcxp_tag);

 bfa_trc(bfa, fcxp_tag);

 fcxp_rsp->rsp_len = be32_to_cpu(fcxp_rsp->rsp_len);





 if (fcxp_rsp->req_status == BFA_STATUS_OK)
  fcxp_rsp->residue_len = 0;
 else
  fcxp_rsp->residue_len = be32_to_cpu(fcxp_rsp->residue_len);

 fcxp = BFA_FCXP_FROM_TAG(mod, fcxp_tag);

 WARN_ON(fcxp->send_cbfn == ((void*)0));

 hal_fcxp_rx_plog(mod->bfa, fcxp, fcxp_rsp);

 if (fcxp->send_cbfn != ((void*)0)) {
  bfa_trc(mod->bfa, (((void*)0) == fcxp->caller));
  if (fcxp->caller == ((void*)0)) {
   fcxp->send_cbfn(fcxp->caller, fcxp, fcxp->send_cbarg,
     fcxp_rsp->req_status, fcxp_rsp->rsp_len,
     fcxp_rsp->residue_len, &fcxp_rsp->fchs);



   bfa_fcxp_free(fcxp);
  } else {
   fcxp->rsp_status = fcxp_rsp->req_status;
   fcxp->rsp_len = fcxp_rsp->rsp_len;
   fcxp->residue_len = fcxp_rsp->residue_len;
   fcxp->rsp_fchs = fcxp_rsp->fchs;

   bfa_cb_queue(bfa, &fcxp->hcb_qe,
     __bfa_fcxp_send_cbfn, fcxp);
  }
 } else {
  bfa_trc(bfa, (((void*)0) == fcxp->send_cbfn));
 }
}
