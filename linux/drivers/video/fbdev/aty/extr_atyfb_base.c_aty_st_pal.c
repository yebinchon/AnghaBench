
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct atyfb_par {int dummy; } ;


 int DAC_DATA ;
 int DAC_W_INDEX ;
 int aty_st_8 (int ,int ,struct atyfb_par const*) ;

__attribute__((used)) static void aty_st_pal(u_int regno, u_int red, u_int green, u_int blue,
         const struct atyfb_par *par)
{
 aty_st_8(DAC_W_INDEX, regno, par);
 aty_st_8(DAC_DATA, red, par);
 aty_st_8(DAC_DATA, green, par);
 aty_st_8(DAC_DATA, blue, par);
}
