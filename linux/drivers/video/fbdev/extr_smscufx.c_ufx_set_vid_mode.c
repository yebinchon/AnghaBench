
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ufx_data {int dummy; } ;
struct fb_var_screeninfo {int xres; int right_margin; int hsync_len; int left_margin; int upper_margin; int yres; int lower_margin; int vsync_len; int sync; int pixclock; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int check_warn_return (int,char*) ;
 int ufx_blank (struct ufx_data*,int) ;
 int ufx_config_pix_clk (struct ufx_data*,int ) ;
 int ufx_disable (struct ufx_data*,int) ;
 int ufx_enable (struct ufx_data*,int) ;
 int ufx_reg_write (struct ufx_data*,int,int) ;
 int ufx_unblank (struct ufx_data*,int) ;

__attribute__((used)) static int ufx_set_vid_mode(struct ufx_data *dev, struct fb_var_screeninfo *var)
{
 u32 temp;
 u16 h_total, h_active, h_blank_start, h_blank_end, h_sync_start, h_sync_end;
 u16 v_total, v_active, v_blank_start, v_blank_end, v_sync_start, v_sync_end;

 int status = ufx_reg_write(dev, 0x8028, 0);
 check_warn_return(status, "ufx_set_vid_mode error disabling RGB pad");

 status = ufx_reg_write(dev, 0x8024, 0);
 check_warn_return(status, "ufx_set_vid_mode error disabling VDAC");


 status = ufx_blank(dev, 1);
 check_warn_return(status, "ufx_set_vid_mode error blanking display");

 status = ufx_disable(dev, 1);
 check_warn_return(status, "ufx_set_vid_mode error disabling display");

 status = ufx_config_pix_clk(dev, var->pixclock);
 check_warn_return(status, "ufx_set_vid_mode error configuring pixclock");

 status = ufx_reg_write(dev, 0x2000, 0x00000104);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2000");


 h_total = var->xres + var->right_margin + var->hsync_len + var->left_margin;
 h_active = var->xres;
 h_blank_start = var->xres + var->right_margin;
 h_blank_end = var->xres + var->right_margin + var->hsync_len;
 h_sync_start = var->xres + var->right_margin;
 h_sync_end = var->xres + var->right_margin + var->hsync_len;

 temp = ((h_total - 1) << 16) | (h_active - 1);
 status = ufx_reg_write(dev, 0x2008, temp);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2008");

 temp = ((h_blank_start - 1) << 16) | (h_blank_end - 1);
 status = ufx_reg_write(dev, 0x200C, temp);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x200C");

 temp = ((h_sync_start - 1) << 16) | (h_sync_end - 1);
 status = ufx_reg_write(dev, 0x2010, temp);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2010");


 v_total = var->upper_margin + var->yres + var->lower_margin + var->vsync_len;
 v_active = var->yres;
 v_blank_start = var->yres + var->lower_margin;
 v_blank_end = var->yres + var->lower_margin + var->vsync_len;
 v_sync_start = var->yres + var->lower_margin;
 v_sync_end = var->yres + var->lower_margin + var->vsync_len;

 temp = ((v_total - 1) << 16) | (v_active - 1);
 status = ufx_reg_write(dev, 0x2014, temp);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2014");

 temp = ((v_blank_start - 1) << 16) | (v_blank_end - 1);
 status = ufx_reg_write(dev, 0x2018, temp);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2018");

 temp = ((v_sync_start - 1) << 16) | (v_sync_end - 1);
 status = ufx_reg_write(dev, 0x201C, temp);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x201C");

 status = ufx_reg_write(dev, 0x2020, 0x00000000);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2020");

 status = ufx_reg_write(dev, 0x2024, 0x00000000);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2024");


 temp = var->xres * var->yres * 2;
 temp = (temp + 7) & (~0x7);
 status = ufx_reg_write(dev, 0x2028, temp);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2028");


 status = ufx_reg_write(dev, 0x2040, 0);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2040");

 status = ufx_reg_write(dev, 0x2044, 0);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2044");

 status = ufx_reg_write(dev, 0x2048, 0);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2048");


 temp = 0x00000001;
 if (var->sync & FB_SYNC_HOR_HIGH_ACT)
  temp |= 0x00000010;

 if (var->sync & FB_SYNC_VERT_HIGH_ACT)
  temp |= 0x00000008;

 status = ufx_reg_write(dev, 0x2040, temp);
 check_warn_return(status, "ufx_set_vid_mode error writing 0x2040");


 status = ufx_enable(dev, 1);
 check_warn_return(status, "ufx_set_vid_mode error enabling display");


 status = ufx_unblank(dev, 1);
 check_warn_return(status, "ufx_set_vid_mode error unblanking display");


 status = ufx_reg_write(dev, 0x8028, 0x00000003);
 check_warn_return(status, "ufx_set_vid_mode error enabling RGB pad");


 status = ufx_reg_write(dev, 0x8024, 0x00000007);
 check_warn_return(status, "ufx_set_vid_mode error enabling VDAC");

 return 0;
}
