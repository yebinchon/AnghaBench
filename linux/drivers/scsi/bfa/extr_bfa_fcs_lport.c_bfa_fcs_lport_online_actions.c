
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfad_s {int bfad_flags; } ;
struct bfa_fcs_lport_s {TYPE_1__* fabric; TYPE_2__* fcs; } ;
struct TYPE_6__ {int (* online ) (struct bfa_fcs_lport_s*) ;int (* init ) (struct bfa_fcs_lport_s*) ;} ;
struct TYPE_5__ {scalar_t__ bfad; } ;
struct TYPE_4__ {size_t fab_type; int oper_type; } ;


 int BFAD_PORT_ONLINE ;
 int BFA_LOG (int ,struct bfad_s*,int ,char*,char*,char*) ;
 int BFA_LPORT_AEN_ONLINE ;
 int BFA_STRING_32 ;
 int KERN_WARNING ;
 TYPE_3__* __port_action ;
 int bfa_fcs_lport_aen_post (struct bfa_fcs_lport_s*,int ) ;
 int bfa_fcs_lport_get_pwwn (struct bfa_fcs_lport_s*) ;
 int bfa_log_level ;
 int bfa_trc (TYPE_2__*,int ) ;
 int stub1 (struct bfa_fcs_lport_s*) ;
 int stub2 (struct bfa_fcs_lport_s*) ;
 int wwn2str (char*,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_online_actions(struct bfa_fcs_lport_s *port)
{
 struct bfad_s *bfad = (struct bfad_s *)port->fcs->bfad;
 char lpwwn_buf[BFA_STRING_32];

 bfa_trc(port->fcs, port->fabric->oper_type);

 __port_action[port->fabric->fab_type].init(port);
 __port_action[port->fabric->fab_type].online(port);

 wwn2str(lpwwn_buf, bfa_fcs_lport_get_pwwn(port));
 BFA_LOG(KERN_WARNING, bfad, bfa_log_level,
  "Logical port online: WWN = %s Role = %s\n",
  lpwwn_buf, "Initiator");
 bfa_fcs_lport_aen_post(port, BFA_LPORT_AEN_ONLINE);

 bfad->bfad_flags |= BFAD_PORT_ONLINE;
}
