
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fb_var_screeninfo {int left_margin; int hsync_len; int xres; int upper_margin; int vsync_len; int yres; int right_margin; int lower_margin; int pixclock; } ;


 char* dlfb_set_register_16 (char*,int,int) ;
 char* dlfb_set_register_16be (char*,int,int) ;
 char* dlfb_set_register_lfsr16 (char*,int,int) ;

__attribute__((used)) static char *dlfb_set_vid_cmds(char *wrptr, struct fb_var_screeninfo *var)
{
 u16 xds, yds;
 u16 xde, yde;
 u16 yec;


 xds = var->left_margin + var->hsync_len;
 wrptr = dlfb_set_register_lfsr16(wrptr, 0x01, xds);

 xde = xds + var->xres;
 wrptr = dlfb_set_register_lfsr16(wrptr, 0x03, xde);


 yds = var->upper_margin + var->vsync_len;
 wrptr = dlfb_set_register_lfsr16(wrptr, 0x05, yds);

 yde = yds + var->yres;
 wrptr = dlfb_set_register_lfsr16(wrptr, 0x07, yde);


 wrptr = dlfb_set_register_lfsr16(wrptr, 0x09,
   xde + var->right_margin - 1);


 wrptr = dlfb_set_register_lfsr16(wrptr, 0x0B, 1);


 wrptr = dlfb_set_register_lfsr16(wrptr, 0x0D, var->hsync_len + 1);


 wrptr = dlfb_set_register_16(wrptr, 0x0F, var->xres);


 yec = var->yres + var->upper_margin + var->lower_margin +
   var->vsync_len;
 wrptr = dlfb_set_register_lfsr16(wrptr, 0x11, yec);


 wrptr = dlfb_set_register_lfsr16(wrptr, 0x13, 0);


 wrptr = dlfb_set_register_lfsr16(wrptr, 0x15, var->vsync_len);


 wrptr = dlfb_set_register_16(wrptr, 0x17, var->yres);


 wrptr = dlfb_set_register_16be(wrptr, 0x1B,
   200*1000*1000/var->pixclock);

 return wrptr;
}
