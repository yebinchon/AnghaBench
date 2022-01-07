
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_s {int dummy; } ;


 int bfa_fcs_lport_ms_offline (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_ns_offline (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_scn_offline (struct bfa_fcs_lport_s*) ;

__attribute__((used)) static void
bfa_fcs_lport_fab_offline(struct bfa_fcs_lport_s *port)
{
 bfa_fcs_lport_ns_offline(port);
 bfa_fcs_lport_scn_offline(port);
 bfa_fcs_lport_ms_offline(port);
}
