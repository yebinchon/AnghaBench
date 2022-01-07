
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct clcd_fb {int clk_enabled; int clk; scalar_t__ off_cntl; scalar_t__ regs; TYPE_3__* panel; TYPE_1__* board; } ;
struct TYPE_6__ {int power; } ;
struct TYPE_8__ {TYPE_2__ props; } ;
struct TYPE_7__ {TYPE_4__* backlight; } ;
struct TYPE_5__ {int (* disable ) (struct clcd_fb*) ;} ;


 int CNTL_LCDEN ;
 int CNTL_LCDPWR ;
 int FB_BLANK_POWERDOWN ;
 int backlight_update_status (TYPE_4__*) ;
 int clcdfb_sleep (int) ;
 int clk_disable (int ) ;
 int readl (scalar_t__) ;
 int stub1 (struct clcd_fb*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void clcdfb_disable(struct clcd_fb *fb)
{
 u32 val;

 if (fb->board->disable)
  fb->board->disable(fb);

 if (fb->panel->backlight) {
  fb->panel->backlight->props.power = FB_BLANK_POWERDOWN;
  backlight_update_status(fb->panel->backlight);
 }

 val = readl(fb->regs + fb->off_cntl);
 if (val & CNTL_LCDPWR) {
  val &= ~CNTL_LCDPWR;
  writel(val, fb->regs + fb->off_cntl);

  clcdfb_sleep(20);
 }
 if (val & CNTL_LCDEN) {
  val &= ~CNTL_LCDEN;
  writel(val, fb->regs + fb->off_cntl);
 }




 if (fb->clk_enabled) {
  fb->clk_enabled = 0;
  clk_disable(fb->clk);
 }
}
