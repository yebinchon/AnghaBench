
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fchs_s {int s_id; int ox_id; } ;
struct fc_logi_s {int dummy; } ;
struct TYPE_2__ {int plogi_rcvd; } ;
struct bfa_fcs_rport_s {TYPE_1__ stats; int pid; int fcs; int reply_oxid; } ;


 int RPSM_EVENT_PLOGI_RCVD ;
 int bfa_fcs_rport_update (struct bfa_fcs_rport_s*,struct fc_logi_s*) ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_fcs_rport_plogi(struct bfa_fcs_rport_s *rport, struct fchs_s *rx_fchs,
   struct fc_logi_s *plogi)
{




 bfa_fcs_rport_update(rport, plogi);

 rport->reply_oxid = rx_fchs->ox_id;
 bfa_trc(rport->fcs, rport->reply_oxid);

 rport->pid = rx_fchs->s_id;
 bfa_trc(rport->fcs, rport->pid);

 rport->stats.plogi_rcvd++;
 bfa_sm_send_event(rport, RPSM_EVENT_PLOGI_RCVD);
}
