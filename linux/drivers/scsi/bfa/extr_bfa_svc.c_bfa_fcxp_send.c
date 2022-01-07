
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef void* u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct bfi_fcxp_send_req_s {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_rport_s {int dummy; } ;
struct bfa_fcxp_rsp_info_s {void* rsp_maxlen; void* rsp_timeout; } ;
struct bfa_fcxp_req_info_s {int class; void* req_tot_len; struct fchs_s fchs; int cts; void* lp_tag; int vf_id; struct bfa_rport_s* bfa_rport; } ;
struct bfa_fcxp_s {int reqq_wqe; int reqq_waiting; int fcxp_tag; void* send_cbarg; scalar_t__ send_cbfn; struct bfa_fcxp_rsp_info_s rsp_info; struct bfa_fcxp_req_info_s req_info; TYPE_1__* fcxp_mod; } ;
typedef enum fc_cos { ____Placeholder_fc_cos } fc_cos ;
typedef scalar_t__ bfa_cb_fcxp_send_t ;
typedef int bfa_boolean_t ;
struct TYPE_2__ {struct bfa_s* bfa; } ;


 int BFA_REQQ_FCXP ;
 int BFA_TRUE ;
 scalar_t__ bfa_fcxp_null_comp ;
 int bfa_fcxp_queue (struct bfa_fcxp_s*,struct bfi_fcxp_send_req_s*) ;
 struct bfi_fcxp_send_req_s* bfa_reqq_next (struct bfa_s*,int ) ;
 int bfa_reqq_wait (struct bfa_s*,int ,int *) ;
 int bfa_trc (struct bfa_s*,int ) ;

void
bfa_fcxp_send(struct bfa_fcxp_s *fcxp, struct bfa_rport_s *rport,
       u16 vf_id, u8 lp_tag, bfa_boolean_t cts, enum fc_cos cos,
       u32 reqlen, struct fchs_s *fchs, bfa_cb_fcxp_send_t cbfn,
       void *cbarg, u32 rsp_maxlen, u8 rsp_timeout)
{
 struct bfa_s *bfa = fcxp->fcxp_mod->bfa;
 struct bfa_fcxp_req_info_s *reqi = &fcxp->req_info;
 struct bfa_fcxp_rsp_info_s *rspi = &fcxp->rsp_info;
 struct bfi_fcxp_send_req_s *send_req;

 bfa_trc(bfa, fcxp->fcxp_tag);




 reqi->bfa_rport = rport;
 reqi->vf_id = vf_id;
 reqi->lp_tag = lp_tag;
 reqi->class = cos;
 rspi->rsp_timeout = rsp_timeout;
 reqi->cts = cts;
 reqi->fchs = *fchs;
 reqi->req_tot_len = reqlen;
 rspi->rsp_maxlen = rsp_maxlen;
 fcxp->send_cbfn = cbfn ? cbfn : bfa_fcxp_null_comp;
 fcxp->send_cbarg = cbarg;




 send_req = bfa_reqq_next(bfa, BFA_REQQ_FCXP);
 if (!send_req) {
  bfa_trc(bfa, fcxp->fcxp_tag);
  fcxp->reqq_waiting = BFA_TRUE;
  bfa_reqq_wait(bfa, BFA_REQQ_FCXP, &fcxp->reqq_wqe);
  return;
 }

 bfa_fcxp_queue(fcxp, send_req);
}
