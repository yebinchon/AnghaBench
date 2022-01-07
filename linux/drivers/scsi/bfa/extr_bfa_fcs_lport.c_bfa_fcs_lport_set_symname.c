
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int symname; } ;
struct TYPE_4__ {TYPE_1__ sym_name; } ;
struct bfa_fcs_lport_s {TYPE_2__ port_cfg; } ;


 int BFA_FCS_GET_NS_FROM_PORT (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_ns_util_send_rspn_id (int ,int *) ;
 int bfa_fcs_lport_sm_online ;
 scalar_t__ bfa_sm_cmp_state (struct bfa_fcs_lport_s*,int ) ;
 int strcpy (int ,char*) ;

void
bfa_fcs_lport_set_symname(struct bfa_fcs_lport_s *port,
    char *symname)
{
 strcpy(port->port_cfg.sym_name.symname, symname);

 if (bfa_sm_cmp_state(port, bfa_fcs_lport_sm_online))
  bfa_fcs_lport_ns_util_send_rspn_id(
   BFA_FCS_GET_NS_FROM_PORT(port), ((void*)0));
}
