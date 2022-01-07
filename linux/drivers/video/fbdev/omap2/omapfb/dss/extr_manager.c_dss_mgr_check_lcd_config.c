
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int dummy; } ;
struct dispc_clock_info {int lck_div; int pck_div; } ;
struct dss_lcd_mgr_config {int video_port_width; int stallmode; int fifohandcheck; struct dispc_clock_info clock_info; } ;


 int EINVAL ;

__attribute__((used)) static int dss_mgr_check_lcd_config(struct omap_overlay_manager *mgr,
  const struct dss_lcd_mgr_config *config)
{
 struct dispc_clock_info cinfo = config->clock_info;
 int dl = config->video_port_width;
 bool stallmode = config->stallmode;
 bool fifohandcheck = config->fifohandcheck;

 if (cinfo.lck_div < 1 || cinfo.lck_div > 255)
  return -EINVAL;

 if (cinfo.pck_div < 1 || cinfo.pck_div > 255)
  return -EINVAL;

 if (dl != 12 && dl != 16 && dl != 18 && dl != 24)
  return -EINVAL;


 if (!stallmode && fifohandcheck)
  return -EINVAL;







 return 0;
}
