
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_ablk_cfg_s {int dummy; } ;


 int BFA_DMA_ALIGN_SZ ;
 int BFA_ROUNDUP (int,int ) ;

u32
bfa_ablk_meminfo(void)
{
 return BFA_ROUNDUP(sizeof(struct bfa_ablk_cfg_s), BFA_DMA_ALIGN_SZ);
}
