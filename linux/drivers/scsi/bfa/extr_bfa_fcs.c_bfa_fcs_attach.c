
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int dummy; } ;
struct bfa_s {int fcs; } ;
struct bfa_fcs_fabric_s {struct bfa_fcs_s* fcs; int bport; int wc; int lps; int vf_q; int vport_q; } ;
struct bfa_fcs_s {struct bfa_s* bfa; scalar_t__ num_rport_logins; int min_cfg; struct bfad_s* bfad; struct bfa_fcs_fabric_s fabric; } ;
typedef int bfa_boolean_t ;


 int BFA_TRUE ;
 int FC_VF_ID_NULL ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int bfa_fcport_event_register (struct bfa_s*,int ,struct bfa_fcs_s*) ;
 int bfa_fcs_fabric_delete_comp ;
 int bfa_fcs_fabric_sm_uninit ;
 int bfa_fcs_lport_attach (int *,struct bfa_fcs_s*,int ,int *) ;
 int bfa_fcs_port_event_handler ;
 int bfa_fcs_uf_recv ;
 int bfa_lps_alloc (struct bfa_s*) ;
 int bfa_sm_set_state (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_uf_recv_register (struct bfa_s*,int ,struct bfa_fcs_s*) ;
 int bfa_wc_init (int *,int ,struct bfa_fcs_fabric_s*) ;
 int bfa_wc_up (int *) ;
 int fcbuild_init () ;
 int memset (struct bfa_fcs_fabric_s*,int ,int) ;

void
bfa_fcs_attach(struct bfa_fcs_s *fcs, struct bfa_s *bfa, struct bfad_s *bfad,
        bfa_boolean_t min_cfg)
{
 struct bfa_fcs_fabric_s *fabric = &fcs->fabric;

 fcs->bfa = bfa;
 fcs->bfad = bfad;
 fcs->min_cfg = min_cfg;
 fcs->num_rport_logins = 0;

 bfa->fcs = BFA_TRUE;
 fcbuild_init();

 bfa_fcport_event_register(fcs->bfa, bfa_fcs_port_event_handler, fcs);
 bfa_uf_recv_register(fcs->bfa, bfa_fcs_uf_recv, fcs);

 memset(fabric, 0, sizeof(struct bfa_fcs_fabric_s));




 fabric->fcs = fcs;
 INIT_LIST_HEAD(&fabric->vport_q);
 INIT_LIST_HEAD(&fabric->vf_q);
 fabric->lps = bfa_lps_alloc(fcs->bfa);
 WARN_ON(!fabric->lps);





 bfa_wc_init(&fabric->wc, bfa_fcs_fabric_delete_comp, fabric);
 bfa_wc_up(&fabric->wc);

 bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_uninit);
 bfa_fcs_lport_attach(&fabric->bport, fabric->fcs, FC_VF_ID_NULL, ((void*)0));
}
