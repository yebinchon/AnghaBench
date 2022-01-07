
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aty128fb_par {int dummy; } ;


 int CLOCK_CNTL_DATA ;
 int CLOCK_CNTL_INDEX ;
 int aty_ld_le32 (int ) ;
 int aty_st_8 (int ,unsigned int) ;

__attribute__((used)) static u32 _aty_ld_pll(unsigned int pll_index,
         const struct aty128fb_par *par)
{
 aty_st_8(CLOCK_CNTL_INDEX, pll_index & 0x3F);
 return aty_ld_le32(CLOCK_CNTL_DATA);
}
