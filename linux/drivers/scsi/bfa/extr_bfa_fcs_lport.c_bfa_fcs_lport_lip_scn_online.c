
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_s {int dummy; } ;


 int bfa_fcs_lport_loop_online (struct bfa_fcs_lport_s*) ;

void
bfa_fcs_lport_lip_scn_online(struct bfa_fcs_lport_s *port)
{
 bfa_fcs_lport_loop_online(port);
}
