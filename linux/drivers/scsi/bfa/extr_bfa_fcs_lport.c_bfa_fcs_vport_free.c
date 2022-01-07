
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bfad; } ;
struct bfad_vport_s {TYPE_1__ drv_port; scalar_t__ comp_del; } ;
struct bfa_fcs_vport_s {int lps; scalar_t__ vport_drv; } ;


 int __vport_fabric (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_fabric_delvport (int ,struct bfa_fcs_vport_s*) ;
 int bfa_lps_delete (int ) ;
 int bfad_im_port_delete (int ,TYPE_1__*) ;
 int complete (scalar_t__) ;

__attribute__((used)) static void
bfa_fcs_vport_free(struct bfa_fcs_vport_s *vport)
{
 struct bfad_vport_s *vport_drv =
   (struct bfad_vport_s *)vport->vport_drv;

 bfa_fcs_fabric_delvport(__vport_fabric(vport), vport);
 bfa_lps_delete(vport->lps);

 if (vport_drv->comp_del) {
  complete(vport_drv->comp_del);
  return;
 }






 bfad_im_port_delete(vport_drv->drv_port.bfad, &vport_drv->drv_port);
}
