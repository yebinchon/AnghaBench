
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int logo_sent; } ;
struct bfa_fcs_vport_s {int lps; TYPE_1__ vport_stats; } ;


 int __vport_fcs (struct bfa_fcs_vport_s*) ;
 int __vport_pwwn (struct bfa_fcs_vport_s*) ;
 int bfa_lps_fdisclogo (int ) ;
 int bfa_trc (int ,int ) ;

__attribute__((used)) static void
bfa_fcs_vport_do_logo(struct bfa_fcs_vport_s *vport)
{
 bfa_trc(__vport_fcs(vport), __vport_pwwn(vport));

 vport->vport_stats.logo_sent++;
 bfa_lps_fdisclogo(vport->lps);
}
