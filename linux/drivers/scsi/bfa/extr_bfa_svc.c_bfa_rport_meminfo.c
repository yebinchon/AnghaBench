
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_s {int dummy; } ;
struct bfa_rport_s {int dummy; } ;
struct bfa_meminfo_s {int dummy; } ;
struct bfa_mem_kva_s {int dummy; } ;
struct TYPE_2__ {int num_rports; } ;
struct bfa_iocfc_cfg_s {TYPE_1__ fwcfg; } ;


 struct bfa_mem_kva_s* BFA_MEM_RPORT_KVA (struct bfa_s*) ;
 int BFA_RPORT_MIN ;
 int bfa_mem_kva_setup (struct bfa_meminfo_s*,struct bfa_mem_kva_s*,int) ;

void
bfa_rport_meminfo(struct bfa_iocfc_cfg_s *cfg, struct bfa_meminfo_s *minfo,
  struct bfa_s *bfa)
{
 struct bfa_mem_kva_s *rport_kva = BFA_MEM_RPORT_KVA(bfa);

 if (cfg->fwcfg.num_rports < BFA_RPORT_MIN)
  cfg->fwcfg.num_rports = BFA_RPORT_MIN;


 bfa_mem_kva_setup(minfo, rport_kva,
  cfg->fwcfg.num_rports * sizeof(struct bfa_rport_s));
}
