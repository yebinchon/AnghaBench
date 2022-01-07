
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_wp_data {int base; } ;
struct hdmi_video_format {int x_res; int y_res; int packing_mode; } ;


 int FLD_VAL (int ,int,int) ;
 int HDMI_WP_VIDEO_CFG ;
 int HDMI_WP_VIDEO_SIZE ;
 int REG_FLD_MOD (int ,int ,int ,int,int) ;
 int hdmi_write_reg (int ,int ,int ) ;

void hdmi_wp_video_config_format(struct hdmi_wp_data *wp,
  struct hdmi_video_format *video_fmt)
{
 u32 l = 0;

 REG_FLD_MOD(wp->base, HDMI_WP_VIDEO_CFG, video_fmt->packing_mode,
  10, 8);

 l |= FLD_VAL(video_fmt->y_res, 31, 16);
 l |= FLD_VAL(video_fmt->x_res, 15, 0);
 hdmi_write_reg(wp->base, HDMI_WP_VIDEO_SIZE, l);
}
