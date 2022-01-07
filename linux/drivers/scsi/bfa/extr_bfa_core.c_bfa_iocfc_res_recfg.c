
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_iocfc_cfg_s {int num_ioim_reqs; } ;
struct bfa_iocfc_s {struct bfi_iocfc_cfg_s* cfginfo; } ;
struct bfa_s {struct bfa_iocfc_s iocfc; } ;
struct bfa_iocfc_fwcfg_s {int num_tskim_reqs; int num_ioim_reqs; int num_rports; int num_uf_bufs; int num_fcxp_reqs; } ;


 int bfa_fcp_res_recfg (struct bfa_s*,int ,int ) ;
 int bfa_fcxp_res_recfg (struct bfa_s*,int ) ;
 int bfa_rport_res_recfg (struct bfa_s*,int ) ;
 int bfa_tskim_res_recfg (struct bfa_s*,int ) ;
 int bfa_uf_res_recfg (struct bfa_s*,int ) ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static void
bfa_iocfc_res_recfg(struct bfa_s *bfa, struct bfa_iocfc_fwcfg_s *fwcfg)
{
 struct bfa_iocfc_s *iocfc = &bfa->iocfc;
 struct bfi_iocfc_cfg_s *cfg_info = iocfc->cfginfo;

 bfa_fcxp_res_recfg(bfa, fwcfg->num_fcxp_reqs);
 bfa_uf_res_recfg(bfa, fwcfg->num_uf_bufs);
 bfa_rport_res_recfg(bfa, fwcfg->num_rports);
 bfa_fcp_res_recfg(bfa, cpu_to_be16(cfg_info->num_ioim_reqs),
     fwcfg->num_ioim_reqs);
 bfa_tskim_res_recfg(bfa, fwcfg->num_tskim_reqs);
}
