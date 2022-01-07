
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int CLKSLEEP ;
 int COREPLL ;
 int CORE_PLL_EN ;
 int Core_Pll_M (int) ;
 int Core_Pll_N (int) ;
 int Core_Pll_P (int) ;
 int DISPPLL ;
 int DISP_PLL_EN ;
 int Disp_Pll_M (int) ;
 int Disp_Pll_N (int) ;
 int Disp_Pll_P (int) ;
 int M24CLK ;
 int MBXCLK ;
 int MEMCLK ;
 int MEMCLK_EN ;
 int PIXCLK ;
 int PIXCLKDIV ;
 int PIXCLKSRC ;
 int PIXCLKSRC_PLL_1 ;
 int PIXCLK_EN ;
 int SDCLK ;
 int SDCLK_EN ;
 int SYSCLKSRC ;
 int SYSCLKSRC_PLL_2 ;
 int VOVRCLK ;
 int write_reg_dly (int,int ) ;

__attribute__((used)) static void enable_clocks(struct fb_info *fbi)
{

 write_reg_dly(SYSCLKSRC_PLL_2, SYSCLKSRC);
 write_reg_dly(PIXCLKSRC_PLL_1, PIXCLKSRC);
 write_reg_dly(0x00000000, CLKSLEEP);






 write_reg_dly((Core_Pll_M(0xb) | Core_Pll_N(0x1) | Core_Pll_P(0x1) |
  CORE_PLL_EN),
        COREPLL);

 write_reg_dly((Disp_Pll_M(0x1b) | Disp_Pll_N(0x7) | Disp_Pll_P(0x1) |
  DISP_PLL_EN),
        DISPPLL);

 write_reg_dly(0x00000000, VOVRCLK);
 write_reg_dly(PIXCLK_EN, PIXCLK);
 write_reg_dly(MEMCLK_EN, MEMCLK);
 write_reg_dly(0x00000001, M24CLK);
 write_reg_dly(0x00000001, MBXCLK);
 write_reg_dly(SDCLK_EN, SDCLK);
 write_reg_dly(0x00000001, PIXCLKDIV);
}
