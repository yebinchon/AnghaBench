
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcxp_s {int qe; } ;
struct bfa_fcxp_mod_s {int fcxp_active_q; int fcxp_rsp_free_q; int fcxp_req_free_q; } ;
typedef scalar_t__ bfa_boolean_t ;


 int bfa_q_deq (int *,struct bfa_fcxp_s**) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct bfa_fcxp_s *
bfa_fcxp_get(struct bfa_fcxp_mod_s *fm, bfa_boolean_t req)
{
 struct bfa_fcxp_s *fcxp;

 if (req)
  bfa_q_deq(&fm->fcxp_req_free_q, &fcxp);
 else
  bfa_q_deq(&fm->fcxp_rsp_free_q, &fcxp);

 if (fcxp)
  list_add_tail(&fcxp->qe, &fm->fcxp_active_q);

 return fcxp;
}
