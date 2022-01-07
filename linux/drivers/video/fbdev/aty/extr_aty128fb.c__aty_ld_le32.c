
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aty128fb_par {scalar_t__ regbase; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 _aty_ld_le32(volatile unsigned int regindex,
          const struct aty128fb_par *par)
{
 return readl (par->regbase + regindex);
}
