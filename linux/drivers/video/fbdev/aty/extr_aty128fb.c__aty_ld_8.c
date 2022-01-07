
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aty128fb_par {scalar_t__ regbase; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 _aty_ld_8(unsigned int regindex,
      const struct aty128fb_par *par)
{
 return readb (par->regbase + regindex);
}
