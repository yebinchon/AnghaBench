
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_s {int dummy; } ;
struct bfa_meminfo_s {int dummy; } ;
struct bfa_mem_kva_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ min_cfg; } ;
struct bfa_iocfc_cfg_s {TYPE_1__ drvcfg; } ;
struct bfa_dconf_s {int dummy; } ;
struct bfa_dconf_hdr_s {int dummy; } ;


 struct bfa_mem_kva_s* BFA_MEM_DCONF_KVA (struct bfa_s*) ;
 int bfa_mem_kva_setup (struct bfa_meminfo_s*,struct bfa_mem_kva_s*,int) ;

void
bfa_dconf_meminfo(struct bfa_iocfc_cfg_s *cfg, struct bfa_meminfo_s *meminfo,
    struct bfa_s *bfa)
{
 struct bfa_mem_kva_s *dconf_kva = BFA_MEM_DCONF_KVA(bfa);

 if (cfg->drvcfg.min_cfg)
  bfa_mem_kva_setup(meminfo, dconf_kva,
    sizeof(struct bfa_dconf_hdr_s));
 else
  bfa_mem_kva_setup(meminfo, dconf_kva,
    sizeof(struct bfa_dconf_s));
}
