
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atyfb_par {int dummy; } ;


 int DAC_CNTL ;
 int DAC_DATA ;
 int DAC_MASK ;
 int DAC_W_INDEX ;
 int aty_st_8 (int ,int,struct atyfb_par const*) ;

__attribute__((used)) static void aty_st_514(int offset, u8 val, const struct atyfb_par *par)
{
 aty_st_8(DAC_CNTL, 1, par);

 aty_st_8(DAC_W_INDEX, offset & 0xff, par);

 aty_st_8(DAC_DATA, (offset >> 8) & 0xff, par);
 aty_st_8(DAC_MASK, val, par);
 aty_st_8(DAC_CNTL, 0, par);
}
