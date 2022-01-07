
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_fdmi_s {int dummy; } ;


 int FDMISM_EVENT_TIMEOUT ;
 int bfa_sm_send_event (struct bfa_fcs_lport_fdmi_s*,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_fdmi_timeout(void *arg)
{
 struct bfa_fcs_lport_fdmi_s *fdmi = (struct bfa_fcs_lport_fdmi_s *) arg;

 bfa_sm_send_event(fdmi, FDMISM_EVENT_TIMEOUT);
}
