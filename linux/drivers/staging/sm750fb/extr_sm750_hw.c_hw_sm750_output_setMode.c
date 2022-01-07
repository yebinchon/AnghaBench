
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lynxfb_output {int* channel; int paths; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_fix_screeninfo {int dummy; } ;
typedef enum disp_output { ____Placeholder_disp_output } disp_output ;


 int DISPLAY_CONTROL_750LE ;
 scalar_t__ SM750LE ;
 int ddk750_set_logical_disp_out (int) ;
 int do_CRT_PRI ;
 int do_CRT_SEC ;
 int do_LCD1_PRI ;
 int do_LCD1_SEC ;
 int peek32 (int ) ;
 int poke32 (int ,int) ;
 int pr_info (char*) ;
 int sm750_crt ;
 scalar_t__ sm750_get_chip_type () ;
 int sm750_panel ;
 int sm750_primary ;

int hw_sm750_output_setMode(struct lynxfb_output *output,
       struct fb_var_screeninfo *var,
       struct fb_fix_screeninfo *fix)
{
 int ret;
 enum disp_output disp_set;
 int channel;

 ret = 0;
 disp_set = 0;
 channel = *output->channel;

 if (sm750_get_chip_type() != SM750LE) {
  if (channel == sm750_primary) {
   pr_info("primary channel\n");
   if (output->paths & sm750_panel)
    disp_set |= do_LCD1_PRI;
   if (output->paths & sm750_crt)
    disp_set |= do_CRT_PRI;

  } else {
   pr_info("secondary channel\n");
   if (output->paths & sm750_panel)
    disp_set |= do_LCD1_SEC;
   if (output->paths & sm750_crt)
    disp_set |= do_CRT_SEC;
  }
  ddk750_set_logical_disp_out(disp_set);
 } else {

  u32 reg;

  reg = peek32(DISPLAY_CONTROL_750LE);
  reg |= 0xf;
  poke32(DISPLAY_CONTROL_750LE, reg);
 }

 pr_info("ddk setlogicdispout done\n");
 return ret;
}
