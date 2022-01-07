
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pxafb_info {int lccr0; int clk; int disable_done; int refresh_done; } ;


 int LCCR0 ;
 int LCCR0_DIS ;
 int LCCR0_LCDT ;
 int LCCR0_LDM ;
 int LCSR ;
 int clk_disable_unprepare (int ) ;
 int lcd_readl (struct pxafb_info*,int ) ;
 int lcd_writel (struct pxafb_info*,int ,int) ;
 int msecs_to_jiffies (int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void pxafb_disable_controller(struct pxafb_info *fbi)
{
 uint32_t lccr0;
 lcd_writel(fbi, LCSR, 0xffffffff);

 lccr0 = lcd_readl(fbi, LCCR0) & ~LCCR0_LDM;
 lcd_writel(fbi, LCCR0, lccr0);
 lcd_writel(fbi, LCCR0, lccr0 | LCCR0_DIS);

 wait_for_completion_timeout(&fbi->disable_done, msecs_to_jiffies(200));


 clk_disable_unprepare(fbi->clk);
}
