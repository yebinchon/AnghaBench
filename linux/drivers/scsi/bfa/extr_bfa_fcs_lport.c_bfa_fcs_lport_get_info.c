
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_lport_info_s {void* node_wwn; void* port_wwn; scalar_t__ offline_reason; scalar_t__ port_state; int port_type; int num_rports_inuse; int max_rports_supp; int num_vports_inuse; int max_vports_supp; } ;
struct bfa_fcs_lport_s {int num_rports; TYPE_1__* fabric; TYPE_2__* fcs; int * vport; } ;
struct TYPE_4__ {int bfa; } ;
struct TYPE_3__ {int num_vports; int fabric_name; } ;


 int BFA_FCS_MAX_RPORTS_SUPP ;
 int BFA_LPORT_TYPE_PHYSICAL ;
 int BFA_LPORT_TYPE_VIRTUAL ;
 void* bfa_fcs_lport_get_nwwn (struct bfa_fcs_lport_s*) ;
 void* bfa_fcs_lport_get_pwwn (struct bfa_fcs_lport_s*) ;
 int bfa_lps_get_max_vport (int ) ;
 int bfa_trc (TYPE_2__*,int ) ;

void
bfa_fcs_lport_get_info(struct bfa_fcs_lport_s *port,
  struct bfa_lport_info_s *port_info)
{

 bfa_trc(port->fcs, port->fabric->fabric_name);

 if (port->vport == ((void*)0)) {



  port_info->port_type = BFA_LPORT_TYPE_PHYSICAL;




  port_info->port_state = 0;
  port_info->offline_reason = 0;

  port_info->port_wwn = bfa_fcs_lport_get_pwwn(port);
  port_info->node_wwn = bfa_fcs_lport_get_nwwn(port);

  port_info->max_vports_supp =
   bfa_lps_get_max_vport(port->fcs->bfa);
  port_info->num_vports_inuse =
   port->fabric->num_vports;
  port_info->max_rports_supp = BFA_FCS_MAX_RPORTS_SUPP;
  port_info->num_rports_inuse = port->num_rports;
 } else {



  port_info->port_type = BFA_LPORT_TYPE_VIRTUAL;




  port_info->port_state = 0;
  port_info->offline_reason = 0;

  port_info->port_wwn = bfa_fcs_lport_get_pwwn(port);
  port_info->node_wwn = bfa_fcs_lport_get_nwwn(port);
 }
}
