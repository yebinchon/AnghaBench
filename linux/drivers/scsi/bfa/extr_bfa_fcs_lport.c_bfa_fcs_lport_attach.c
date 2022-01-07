
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct bfa_fcs_vport_s {TYPE_2__* lps; } ;
struct bfa_fcs_s {int dummy; } ;
struct bfa_fcs_lport_s {scalar_t__ num_rports; int rport_q; TYPE_3__* fabric; int lp_tag; struct bfa_fcs_vport_s* vport; struct bfa_fcs_s* fcs; } ;
struct TYPE_6__ {TYPE_1__* lps; } ;
struct TYPE_5__ {int bfa_tag; } ;
struct TYPE_4__ {int bfa_tag; } ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_3__* bfa_fcs_vf_lookup (struct bfa_fcs_s*,int ) ;

void
bfa_fcs_lport_attach(struct bfa_fcs_lport_s *lport, struct bfa_fcs_s *fcs,
     u16 vf_id, struct bfa_fcs_vport_s *vport)
{
 lport->fcs = fcs;
 lport->fabric = bfa_fcs_vf_lookup(fcs, vf_id);
 lport->vport = vport;
 lport->lp_tag = (vport) ? vport->lps->bfa_tag :
      lport->fabric->lps->bfa_tag;

 INIT_LIST_HEAD(&lport->rport_q);
 lport->num_rports = 0;
}
