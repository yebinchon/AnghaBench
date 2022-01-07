
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int plogi_timeouts; } ;
struct bfa_fcs_rport_s {int port; TYPE_1__ stats; } ;


 int RPSM_EVENT_TIMEOUT ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int rport_plogi_timeouts ;

__attribute__((used)) static void
bfa_fcs_rport_timeout(void *arg)
{
 struct bfa_fcs_rport_s *rport = (struct bfa_fcs_rport_s *) arg;

 rport->stats.plogi_timeouts++;
 bfa_stats(rport->port, rport_plogi_timeouts);
 bfa_sm_send_event(rport, RPSM_EVENT_TIMEOUT);
}
