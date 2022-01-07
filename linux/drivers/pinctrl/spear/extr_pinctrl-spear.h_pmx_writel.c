
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct spear_pmx {scalar_t__ vbase; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void pmx_writel(struct spear_pmx *pmx, u32 val, u32 reg)
{
 writel_relaxed(val, pmx->vbase + reg);
}
