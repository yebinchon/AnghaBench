
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fchs_s {int ox_id; } ;
struct TYPE_2__ {int logo_rcvd; } ;
struct bfa_fcs_rport_s {TYPE_1__ stats; int prlo; int reply_oxid; int fcs; } ;


 int BFA_FALSE ;
 int RPSM_EVENT_LOGO_RCVD ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_process_logo(struct bfa_fcs_rport_s *rport, struct fchs_s *fchs)
{
 rport->reply_oxid = fchs->ox_id;
 bfa_trc(rport->fcs, rport->reply_oxid);

 rport->prlo = BFA_FALSE;
 rport->stats.logo_rcvd++;
 bfa_sm_send_event(rport, RPSM_EVENT_LOGO_RCVD);
}
