
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct spear_pmx {scalar_t__ vbase; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 pmx_readl(struct spear_pmx *pmx, u32 reg)
{
 return readl_relaxed(pmx->vbase + reg);
}
