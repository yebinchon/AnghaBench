
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aty128fb_par {scalar_t__ regbase; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void _aty_st_le32(volatile unsigned int regindex, u32 val,
    const struct aty128fb_par *par)
{
 writel (val, par->regbase + regindex);
}
