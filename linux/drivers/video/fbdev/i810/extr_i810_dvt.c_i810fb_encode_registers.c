
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int pixclock; } ;
struct i810fb_par {size_t ovract; TYPE_1__ regs; } ;
struct fb_var_screeninfo {size_t right_margin; size_t hsync_len; size_t left_margin; } ;


 size_t i810fb_find_best_mode (size_t,size_t,int ) ;
 TYPE_1__* std_modes ;

void i810fb_encode_registers(const struct fb_var_screeninfo *var,
        struct i810fb_par *par, u32 xres, u32 yres)
{
 u32 i_best = i810fb_find_best_mode(xres, yres, par->regs.pixclock);

 par->regs = std_modes[i_best];


 par->ovract = ((xres + var->right_margin + var->hsync_len +
   var->left_margin - 32) | ((xres - 32) << 16));
}
