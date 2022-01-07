
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync; } ;
struct fb_info {TYPE_1__ var; } ;


 int DMCTRL ;
 int DSCTRL ;
 unsigned long DSCTRL_BLNK_POL ;
 unsigned long DSCTRL_HS_POL ;
 int DSCTRL_SYNCGEN_EN ;
 unsigned long DSCTRL_VS_POL ;
 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int readl (int ) ;
 int write_reg_dly (int,int ) ;

__attribute__((used)) static void setup_display(struct fb_info *fbi)
{
 unsigned long dsctrl = 0;

 dsctrl = DSCTRL_BLNK_POL;
 if (fbi->var.sync & FB_SYNC_HOR_HIGH_ACT)
  dsctrl |= DSCTRL_HS_POL;
 if (fbi->var.sync & FB_SYNC_VERT_HIGH_ACT)
  dsctrl |= DSCTRL_VS_POL;
 write_reg_dly(dsctrl, DSCTRL);
 write_reg_dly(0xd0303010, DMCTRL);
 write_reg_dly((readl(DSCTRL) | DSCTRL_SYNCGEN_EN), DSCTRL);
}
