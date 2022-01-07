
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_parameter {unsigned long horizontal_display_end; unsigned long vertical_display_end; } ;


 int CRT_AUTO_CENTERING_BR ;
 unsigned long CRT_AUTO_CENTERING_BR_BOTTOM_MASK ;
 unsigned long CRT_AUTO_CENTERING_BR_BOTTOM_SHIFT ;
 unsigned long CRT_AUTO_CENTERING_BR_RIGHT_MASK ;
 int CRT_AUTO_CENTERING_TL ;
 int CRT_DISPLAY_CTRL ;
 unsigned long CRT_DISPLAY_CTRL_CLK_MASK ;
 unsigned long CRT_DISPLAY_CTRL_CLK_PLL108 ;
 unsigned long CRT_DISPLAY_CTRL_CLK_PLL25 ;
 unsigned long CRT_DISPLAY_CTRL_CLK_PLL41 ;
 unsigned long CRT_DISPLAY_CTRL_CLK_PLL65 ;
 unsigned long CRT_DISPLAY_CTRL_CLK_PLL74 ;
 unsigned long CRT_DISPLAY_CTRL_CLK_PLL80 ;
 unsigned long CRT_DISPLAY_CTRL_CRTSELECT ;
 unsigned long CRT_DISPLAY_CTRL_RGBBIT ;
 unsigned long DISPLAY_CTRL_CLOCK_PHASE ;
 int poke32 (int ,unsigned long) ;

__attribute__((used)) static unsigned long displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
        unsigned long dispControl)
{
 unsigned long x, y;

 x = pModeParam->horizontal_display_end;
 y = pModeParam->vertical_display_end;







 poke32(CRT_AUTO_CENTERING_TL, 0);

 poke32(CRT_AUTO_CENTERING_BR,
        (((y - 1) << CRT_AUTO_CENTERING_BR_BOTTOM_SHIFT) &
  CRT_AUTO_CENTERING_BR_BOTTOM_MASK) |
        ((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
 dispControl &= ~CRT_DISPLAY_CTRL_CLK_MASK;



 if (x == 800 && y == 600)
  dispControl |= CRT_DISPLAY_CTRL_CLK_PLL41;
 else if (x == 1024 && y == 768)
  dispControl |= CRT_DISPLAY_CTRL_CLK_PLL65;
 else if (x == 1152 && y == 864)
  dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
 else if (x == 1280 && y == 768)
  dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
 else if (x == 1280 && y == 720)
  dispControl |= CRT_DISPLAY_CTRL_CLK_PLL74;
 else if (x == 1280 && y == 960)
  dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
 else if (x == 1280 && y == 1024)
  dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
 else
  dispControl |= CRT_DISPLAY_CTRL_CLK_PLL25;


 dispControl |= (CRT_DISPLAY_CTRL_CRTSELECT | CRT_DISPLAY_CTRL_RGBBIT);


 dispControl |= DISPLAY_CTRL_CLOCK_PHASE;

 poke32(CRT_DISPLAY_CTRL, dispControl);

 return dispControl;
}
