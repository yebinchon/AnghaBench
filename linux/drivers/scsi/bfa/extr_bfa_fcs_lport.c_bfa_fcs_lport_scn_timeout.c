
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_scn_s {int dummy; } ;


 int SCNSM_EVENT_TIMEOUT ;
 int bfa_sm_send_event (struct bfa_fcs_lport_scn_s*,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_scn_timeout(void *arg)
{
 struct bfa_fcs_lport_scn_s *scn = (struct bfa_fcs_lport_scn_s *) arg;

 bfa_sm_send_event(scn, SCNSM_EVENT_TIMEOUT);
}
