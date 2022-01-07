
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcxp_s {int send_cbfn; int reqq_wqe; scalar_t__ reqq_waiting; } ;


 scalar_t__ BFA_FALSE ;
 int bfa_fcxp_free (struct bfa_fcxp_s*) ;
 int bfa_fcxp_null_comp ;
 int bfa_reqq_wcancel (int *) ;

void
bfa_fcxp_discard(struct bfa_fcxp_s *fcxp)
{




 if (fcxp->reqq_waiting) {
  fcxp->reqq_waiting = BFA_FALSE;
  bfa_reqq_wcancel(&fcxp->reqq_wqe);
  bfa_fcxp_free(fcxp);
  return;
 }

 fcxp->send_cbfn = bfa_fcxp_null_comp;
}
