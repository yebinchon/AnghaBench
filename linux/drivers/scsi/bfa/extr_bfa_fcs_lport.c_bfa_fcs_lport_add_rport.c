
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int qe; } ;
struct bfa_fcs_lport_s {int num_rports; int rport_q; } ;


 int list_add_tail (int *,int *) ;

void
bfa_fcs_lport_add_rport(
 struct bfa_fcs_lport_s *port,
 struct bfa_fcs_rport_s *rport)
{
 list_add_tail(&rport->qe, &port->rport_q);
 port->num_rports++;
}
