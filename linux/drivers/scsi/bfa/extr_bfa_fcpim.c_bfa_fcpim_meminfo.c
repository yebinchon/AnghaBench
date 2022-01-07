
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bfa_tskim_s {int dummy; } ;
struct bfa_ioim_sp_s {int dummy; } ;
struct bfa_ioim_s {int dummy; } ;
struct TYPE_2__ {int num_ioim_reqs; int num_tskim_reqs; } ;
struct bfa_iocfc_cfg_s {TYPE_1__ fwcfg; } ;


 int BFA_TSKIM_MIN ;
 int bfa_itnim_meminfo (struct bfa_iocfc_cfg_s*,int*) ;

__attribute__((used)) static void
bfa_fcpim_meminfo(struct bfa_iocfc_cfg_s *cfg, u32 *km_len)
{
 bfa_itnim_meminfo(cfg, km_len);




 *km_len += cfg->fwcfg.num_ioim_reqs *
   (sizeof(struct bfa_ioim_s) + sizeof(struct bfa_ioim_sp_s));




 if (cfg->fwcfg.num_tskim_reqs < BFA_TSKIM_MIN)
  cfg->fwcfg.num_tskim_reqs = BFA_TSKIM_MIN;
 *km_len += cfg->fwcfg.num_tskim_reqs * sizeof(struct bfa_tskim_s);
}
