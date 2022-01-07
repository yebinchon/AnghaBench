
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aty128fb_par {scalar_t__ regbase; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void _aty_st_8(unsigned int regindex, u8 val,
        const struct aty128fb_par *par)
{
 writeb (val, par->regbase + regindex);
}
