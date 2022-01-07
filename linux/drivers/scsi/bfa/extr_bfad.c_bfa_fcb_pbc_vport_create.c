
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_pbc_vport_s {int vp_nwwn; int vp_pwwn; } ;
struct TYPE_2__ {struct bfad_s* bfad; } ;
struct bfad_vport_s {int list_entry; int fcs_vport; TYPE_1__ drv_port; } ;
struct bfad_s {int pbc_vport_list; int bfa_fcs; } ;
struct bfa_lport_cfg_s {int preboot_vp; int nwwn; int pwwn; int roles; int member_0; } ;


 int BFA_LPORT_ROLE_FCP_IM ;
 int BFA_STATUS_OK ;
 int BFA_TRUE ;
 int GFP_ATOMIC ;
 int bfa_fcs_pbc_vport_create (int *,int *,int ,struct bfa_lport_cfg_s*,struct bfad_vport_s*) ;
 int bfa_trc (struct bfad_s*,int ) ;
 struct bfad_vport_s* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

void
bfa_fcb_pbc_vport_create(struct bfad_s *bfad, struct bfi_pbc_vport_s pbc_vport)
{

 struct bfa_lport_cfg_s port_cfg = {0};
 struct bfad_vport_s *vport;
 int rc;

 vport = kzalloc(sizeof(struct bfad_vport_s), GFP_ATOMIC);
 if (!vport) {
  bfa_trc(bfad, 0);
  return;
 }

 vport->drv_port.bfad = bfad;
 port_cfg.roles = BFA_LPORT_ROLE_FCP_IM;
 port_cfg.pwwn = pbc_vport.vp_pwwn;
 port_cfg.nwwn = pbc_vport.vp_nwwn;
 port_cfg.preboot_vp = BFA_TRUE;

 rc = bfa_fcs_pbc_vport_create(&vport->fcs_vport, &bfad->bfa_fcs, 0,
      &port_cfg, vport);

 if (rc != BFA_STATUS_OK) {
  bfa_trc(bfad, 0);
  return;
 }

 list_add_tail(&vport->list_entry, &bfad->pbc_vport_list);
}
