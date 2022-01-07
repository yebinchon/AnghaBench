
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_fcxp_s {int rsp_sgpg_q; int rsp_sglen_cbfn; int rsp_sga_cbfn; int nrsp_sgles; int use_irspbuf; int req_sgpg_q; int req_sglen_cbfn; int req_sga_cbfn; int nreq_sgles; int use_ireqbuf; void* caller; int fcxp_tag; } ;
typedef int bfa_fcxp_get_sglen_t ;
typedef int bfa_fcxp_get_sgaddr_t ;


 int WARN_ON (int ) ;
 int bfa_fcxp_init_reqrsp (struct bfa_fcxp_s*,struct bfa_s*,int *,int *,int *,int *,int *,int,int ,int ) ;
 int bfa_trc (struct bfa_s*,int ) ;

__attribute__((used)) static void
bfa_fcxp_init(struct bfa_fcxp_s *fcxp,
        void *caller, struct bfa_s *bfa, int nreq_sgles,
        int nrsp_sgles, bfa_fcxp_get_sgaddr_t req_sga_cbfn,
        bfa_fcxp_get_sglen_t req_sglen_cbfn,
        bfa_fcxp_get_sgaddr_t rsp_sga_cbfn,
        bfa_fcxp_get_sglen_t rsp_sglen_cbfn)
{

 WARN_ON(bfa == ((void*)0));

 bfa_trc(bfa, fcxp->fcxp_tag);

 fcxp->caller = caller;

 bfa_fcxp_init_reqrsp(fcxp, bfa,
  &fcxp->use_ireqbuf, &fcxp->nreq_sgles, &fcxp->req_sga_cbfn,
  &fcxp->req_sglen_cbfn, &fcxp->req_sgpg_q,
  nreq_sgles, req_sga_cbfn, req_sglen_cbfn);

 bfa_fcxp_init_reqrsp(fcxp, bfa,
  &fcxp->use_irspbuf, &fcxp->nrsp_sgles, &fcxp->rsp_sga_cbfn,
  &fcxp->rsp_sglen_cbfn, &fcxp->rsp_sgpg_q,
  nrsp_sgles, rsp_sga_cbfn, rsp_sglen_cbfn);

}
