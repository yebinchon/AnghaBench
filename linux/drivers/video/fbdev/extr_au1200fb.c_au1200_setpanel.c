
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct panel_settings {int mode_clkcontrol; int lcdclk; int mode_screen; int mode_horztiming; int mode_verttiming; int mode_pwmdiv; int mode_pwmhi; int mode_outmask; int mode_fifoctrl; int Yres; int Xres; int name; } ;
struct clk {int dummy; } ;
struct au1200fb_platdata {int (* panel_init ) () ;int (* panel_shutdown ) () ;} ;
struct TYPE_7__ {int cursorctrl; int cursorpos; int cursorcolor0; int cursorcolor1; int cursorcolor2; int cursorcolor3; } ;
struct TYPE_10__ {int winenable; int screen; int intstatus; int horztiming; int verttiming; int clkcontrol; int pwmdiv; int pwmhi; int outmask; int fifoctrl; int intenable; int backcolor; int colorkey; int colorkeymsk; TYPE_2__ hwc; TYPE_1__* window; } ;
struct TYPE_9__ {int mode_backcolor; int mode_colorkey; int mode_colorkeymsk; TYPE_3__* w; } ;
struct TYPE_8__ {int ypos; int xpos; } ;
struct TYPE_6__ {int winctrl0; int winctrl1; int winctrl2; int winbuf0; int winbuf1; int winbufctrl; } ;


 int D (int) ;
 int IS_ERR (struct clk*) ;
 int LCD_CLKCONTROL_EXT ;
 int LCD_INT_SD ;
 int LCD_INT_SS ;
 int LCD_SCREEN_SEN ;
 int au1200_setlocation (int ,int,int ,int ) ;
 struct clk* clk_get (int *,char*) ;
 int clk_prepare_enable (struct clk*) ;
 int clk_put (struct clk*) ;
 long clk_round_rate (struct clk*,long) ;
 int clk_set_rate (struct clk*,long) ;
 int fbdev ;
 TYPE_5__* lcd ;
 struct panel_settings* panel ;
 int printk (char*,int ,int ,int ) ;
 int stub1 () ;
 int stub2 () ;
 TYPE_4__* win ;
 int wmb () ;

__attribute__((used)) static void au1200_setpanel(struct panel_settings *newpanel,
       struct au1200fb_platdata *pd)
{



 uint32 winenable;


 winenable = lcd->winenable;
 lcd->winenable = 0;
 wmb();



 if (lcd->screen & LCD_SCREEN_SEN) {

  lcd->intstatus = LCD_INT_SS;
  while ((lcd->intstatus & LCD_INT_SS) == 0)
   ;

  lcd->screen &= ~LCD_SCREEN_SEN;

  do {
   lcd->intstatus = lcd->intstatus;
   wmb();

  } while ((lcd->intstatus & LCD_INT_SD) == 0);






  if (pd->panel_shutdown)
   pd->panel_shutdown();
 }


 if (newpanel == ((void*)0))
  return;

 panel = newpanel;

 printk("Panel(%s), %dx%d\n", panel->name, panel->Xres, panel->Yres);




 if (!(panel->mode_clkcontrol & LCD_CLKCONTROL_EXT))
 {
  struct clk *c = clk_get(((void*)0), "lcd_intclk");
  long r, pc = panel->lcdclk * 1000000;

  if (!IS_ERR(c)) {
   r = clk_round_rate(c, pc);
   if ((pc - r) < (pc / 10)) {
    clk_set_rate(c, r);
    clk_prepare_enable(c);
   }
   clk_put(c);
  }
 }




 lcd->screen = panel->mode_screen;
 lcd->horztiming = panel->mode_horztiming;
 lcd->verttiming = panel->mode_verttiming;
 lcd->clkcontrol = panel->mode_clkcontrol;
 lcd->pwmdiv = panel->mode_pwmdiv;
 lcd->pwmhi = panel->mode_pwmhi;
 lcd->outmask = panel->mode_outmask;
 lcd->fifoctrl = panel->mode_fifoctrl;
 wmb();
 lcd->winenable = winenable;




 lcd->screen |= LCD_SCREEN_SEN;
 wmb();


 if (pd->panel_init)
  pd->panel_init();


 lcd->intenable = 0;
 lcd->intstatus = ~0;
 lcd->backcolor = win->mode_backcolor;


 lcd->colorkey = win->mode_colorkey;
 lcd->colorkeymsk = win->mode_colorkeymsk;


 lcd->hwc.cursorctrl = 0;
 lcd->hwc.cursorpos = 0;
 lcd->hwc.cursorcolor0 = 0;
 lcd->hwc.cursorcolor1 = 0;
 lcd->hwc.cursorcolor2 = 0;
 lcd->hwc.cursorcolor3 = 0;
}
