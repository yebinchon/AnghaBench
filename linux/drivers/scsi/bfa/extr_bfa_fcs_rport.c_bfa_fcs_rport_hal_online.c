
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_rport_info_s {int max_frmsz; int cisc; int fc_class; int vf_en; int vf_id; int lp_tag; int local_pid; int pid; } ;
struct bfa_fcs_rport_s {int bfa_rport; int maxfrsize; int cisc; int fc_cos; int pid; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {TYPE_1__* fabric; int lp_tag; int pid; } ;
struct TYPE_2__ {int is_vf; int vf_id; } ;


 int bfa_rport_online (int ,struct bfa_rport_info_s*) ;

__attribute__((used)) static void
bfa_fcs_rport_hal_online(struct bfa_fcs_rport_s *rport)
{
 struct bfa_fcs_lport_s *port = rport->port;
 struct bfa_rport_info_s rport_info;

 rport_info.pid = rport->pid;
 rport_info.local_pid = port->pid;
 rport_info.lp_tag = port->lp_tag;
 rport_info.vf_id = port->fabric->vf_id;
 rport_info.vf_en = port->fabric->is_vf;
 rport_info.fc_class = rport->fc_cos;
 rport_info.cisc = rport->cisc;
 rport_info.max_frmsz = rport->maxfrsize;
 bfa_rport_online(rport->bfa_rport, &rport_info);
}
