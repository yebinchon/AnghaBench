
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct clcd_fb {int clk_enabled; TYPE_3__* board; TYPE_2__* panel; scalar_t__ off_cntl; scalar_t__ regs; int clk; } ;
struct TYPE_5__ {int power; } ;
struct TYPE_8__ {TYPE_1__ props; } ;
struct TYPE_7__ {int (* enable ) (struct clcd_fb*) ;} ;
struct TYPE_6__ {TYPE_4__* backlight; } ;


 int CNTL_LCDEN ;
 int CNTL_LCDPWR ;
 int FB_BLANK_UNBLANK ;
 int backlight_update_status (TYPE_4__*) ;
 int clcdfb_sleep (int) ;
 int clk_enable (int ) ;
 int stub1 (struct clcd_fb*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void clcdfb_enable(struct clcd_fb *fb, u32 cntl)
{



 if (!fb->clk_enabled) {
  fb->clk_enabled = 1;
  clk_enable(fb->clk);
 }




 cntl |= CNTL_LCDEN;
 writel(cntl, fb->regs + fb->off_cntl);

 clcdfb_sleep(20);




 cntl |= CNTL_LCDPWR;
 writel(cntl, fb->regs + fb->off_cntl);




 if (fb->panel->backlight) {
  fb->panel->backlight->props.power = FB_BLANK_UNBLANK;
  backlight_update_status(fb->panel->backlight);
 }




 if (fb->board->enable)
  fb->board->enable(fb);
}
