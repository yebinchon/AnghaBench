
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clock; int hAct_high; int vAct_high; int valid; int pwr_delay; scalar_t__ vblank; scalar_t__ vSync_width; scalar_t__ vOver_plus; scalar_t__ hblank; scalar_t__ hSync_width; scalar_t__ hOver_plus; int yres; int xres; } ;
struct radeonfb_info {TYPE_1__ panel_info; } ;
struct fb_var_screeninfo {int pixclock; int sync; scalar_t__ vsync_len; scalar_t__ lower_margin; scalar_t__ upper_margin; scalar_t__ hsync_len; scalar_t__ right_margin; scalar_t__ left_margin; int yres; int xres; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;

__attribute__((used)) static void radeon_var_to_panel_info(struct radeonfb_info *rinfo, struct fb_var_screeninfo *var)
{
 rinfo->panel_info.xres = var->xres;
 rinfo->panel_info.yres = var->yres;
 rinfo->panel_info.clock = 100000000 / var->pixclock;
 rinfo->panel_info.hOver_plus = var->right_margin;
 rinfo->panel_info.hSync_width = var->hsync_len;
        rinfo->panel_info.hblank = var->left_margin +
  (var->right_margin + var->hsync_len);
 rinfo->panel_info.vOver_plus = var->lower_margin;
 rinfo->panel_info.vSync_width = var->vsync_len;
        rinfo->panel_info.vblank = var->upper_margin +
  (var->lower_margin + var->vsync_len);
 rinfo->panel_info.hAct_high =
  (var->sync & FB_SYNC_HOR_HIGH_ACT) != 0;
 rinfo->panel_info.vAct_high =
  (var->sync & FB_SYNC_VERT_HIGH_ACT) != 0;
 rinfo->panel_info.valid = 1;





 rinfo->panel_info.pwr_delay = 200;
}
