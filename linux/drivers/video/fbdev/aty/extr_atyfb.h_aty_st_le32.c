
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atyfb_par {scalar_t__ ati_regbase; } ;


 int out_le32 (scalar_t__,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void aty_st_le32(int regindex, u32 val, const struct atyfb_par *par)
{

 if (regindex >= 0x400)
  regindex -= 0x800;




 writel(val, par->ati_regbase + regindex);

}
