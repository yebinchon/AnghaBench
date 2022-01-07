
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_fcxp_s {int fcxp_tag; } ;
typedef int bfa_fcxp_get_sglen_t ;
typedef int bfa_fcxp_get_sgaddr_t ;
typedef int bfa_boolean_t ;


 int BFA_FCXP_MOD (struct bfa_s*) ;
 int WARN_ON (int ) ;
 struct bfa_fcxp_s* bfa_fcxp_get (int ,int ) ;
 int bfa_fcxp_init (struct bfa_fcxp_s*,void*,struct bfa_s*,int,int,int ,int ,int ,int ) ;
 int bfa_trc (struct bfa_s*,int ) ;

struct bfa_fcxp_s *
bfa_fcxp_req_rsp_alloc(void *caller, struct bfa_s *bfa, int nreq_sgles,
  int nrsp_sgles, bfa_fcxp_get_sgaddr_t req_sga_cbfn,
  bfa_fcxp_get_sglen_t req_sglen_cbfn,
  bfa_fcxp_get_sgaddr_t rsp_sga_cbfn,
  bfa_fcxp_get_sglen_t rsp_sglen_cbfn, bfa_boolean_t req)
{
 struct bfa_fcxp_s *fcxp = ((void*)0);

 WARN_ON(bfa == ((void*)0));

 fcxp = bfa_fcxp_get(BFA_FCXP_MOD(bfa), req);
 if (fcxp == ((void*)0))
  return ((void*)0);

 bfa_trc(bfa, fcxp->fcxp_tag);

 bfa_fcxp_init(fcxp, caller, bfa, nreq_sgles, nrsp_sgles, req_sga_cbfn,
   req_sglen_cbfn, rsp_sga_cbfn, rsp_sglen_cbfn);

 return fcxp;
}
