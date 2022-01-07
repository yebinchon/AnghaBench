
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcport_s {int stats_status; scalar_t__ stats_qfull; int stats_reqq_wait; int bfa; } ;


 scalar_t__ BFA_FALSE ;
 int BFA_STATUS_ETIMER ;
 int BFA_TRUE ;
 int __bfa_cb_fcport_stats_get (struct bfa_fcport_s*,int ) ;
 int bfa_reqq_wcancel (int *) ;
 int bfa_trc (int ,scalar_t__) ;

__attribute__((used)) static void
bfa_fcport_stats_get_timeout(void *cbarg)
{
 struct bfa_fcport_s *fcport = (struct bfa_fcport_s *) cbarg;

 bfa_trc(fcport->bfa, fcport->stats_qfull);

 if (fcport->stats_qfull) {
  bfa_reqq_wcancel(&fcport->stats_reqq_wait);
  fcport->stats_qfull = BFA_FALSE;
 }

 fcport->stats_status = BFA_STATUS_ETIMER;
 __bfa_cb_fcport_stats_get(fcport, BFA_TRUE);
}
