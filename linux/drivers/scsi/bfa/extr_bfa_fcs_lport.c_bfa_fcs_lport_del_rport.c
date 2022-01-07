
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int qe; } ;
struct bfa_fcs_lport_s {int num_rports; int rport_q; } ;


 int BFA_FCS_PORT_SM_DELRPORT ;
 int WARN_ON (int) ;
 int bfa_q_is_on_q (int *,struct bfa_fcs_rport_s*) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_s*,int ) ;
 int list_del (int *) ;

void
bfa_fcs_lport_del_rport(
 struct bfa_fcs_lport_s *port,
 struct bfa_fcs_rport_s *rport)
{
 WARN_ON(!bfa_q_is_on_q(&port->rport_q, rport));
 list_del(&rport->qe);
 port->num_rports--;

 bfa_sm_send_event(port, BFA_FCS_PORT_SM_DELRPORT);
}
