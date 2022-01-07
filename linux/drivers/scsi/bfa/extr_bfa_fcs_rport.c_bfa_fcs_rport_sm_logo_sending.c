
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_1__* fcs; int fcxp_wqe; int prlo; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_3__ {int bfa; } ;


 int BFA_TRUE ;







 int bfa_fcs_rport_free (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_logo_acc (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_prlo_acc (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_sm_uninit ;
 int bfa_fcxp_walloc_cancel (int ,int *) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_logo_sending(struct bfa_fcs_rport_s *rport,
  enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 132:

  bfa_sm_set_state(rport, bfa_fcs_rport_sm_uninit);
  bfa_fcs_rport_free(rport);
  break;

 case 128:
 case 129:
 case 133:
 case 134:
  break;

 case 131:
  bfa_fcs_rport_send_logo_acc(rport);

 case 130:
  if (rport->prlo == BFA_TRUE)
   bfa_fcs_rport_send_prlo_acc(rport);

  bfa_sm_set_state(rport, bfa_fcs_rport_sm_uninit);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_fcs_rport_free(rport);
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
