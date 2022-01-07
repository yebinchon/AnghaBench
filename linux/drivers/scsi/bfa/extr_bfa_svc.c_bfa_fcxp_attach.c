
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_s {int dummy; } ;
struct bfa_pcidev_s {int dummy; } ;
struct TYPE_3__ {int min_cfg; } ;
struct TYPE_4__ {int num_fcxp_reqs; } ;
struct bfa_iocfc_cfg_s {TYPE_1__ drvcfg; TYPE_2__ fwcfg; } ;
struct bfa_fcxp_mod_s {int rsp_wait_q; int req_wait_q; int rsp_pld_sz; int req_pld_sz; int num_fcxps; struct bfa_s* bfa; } ;


 int BFA_FCXP_MAX_IBUF_SZ ;
 int BFA_FCXP_MAX_LBUF_SZ ;
 struct bfa_fcxp_mod_s* BFA_FCXP_MOD (struct bfa_s*) ;
 int INIT_LIST_HEAD (int *) ;
 int claim_fcxps_mem (struct bfa_fcxp_mod_s*) ;

void
bfa_fcxp_attach(struct bfa_s *bfa, void *bfad, struct bfa_iocfc_cfg_s *cfg,
  struct bfa_pcidev_s *pcidev)
{
 struct bfa_fcxp_mod_s *mod = BFA_FCXP_MOD(bfa);

 mod->bfa = bfa;
 mod->num_fcxps = cfg->fwcfg.num_fcxp_reqs;




 mod->req_pld_sz = mod->rsp_pld_sz = BFA_FCXP_MAX_IBUF_SZ;
 if (!cfg->drvcfg.min_cfg)
  mod->rsp_pld_sz = BFA_FCXP_MAX_LBUF_SZ;

 INIT_LIST_HEAD(&mod->req_wait_q);
 INIT_LIST_HEAD(&mod->rsp_wait_q);

 claim_fcxps_mem(mod);
}
