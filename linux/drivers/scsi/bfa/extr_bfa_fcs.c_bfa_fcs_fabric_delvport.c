
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_vport_s {int qe; } ;
struct bfa_fcs_fabric_s {int wc; int num_vports; } ;


 int bfa_wc_down (int *) ;
 int list_del (int *) ;

void
bfa_fcs_fabric_delvport(struct bfa_fcs_fabric_s *fabric,
   struct bfa_fcs_vport_s *vport)
{
 list_del(&vport->qe);
 fabric->num_vports--;
 bfa_wc_down(&fabric->wc);
}
