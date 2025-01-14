
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_lcd_mgr_config {int video_port_width; } ;
typedef enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;


 int OMAP_DSS_COLOR_RGB12U ;
 int OMAP_DSS_COLOR_RGB16 ;

bool dss_ovl_use_replication(struct dss_lcd_mgr_config config,
  enum omap_color_mode mode)
{
 if (mode != OMAP_DSS_COLOR_RGB12U && mode != OMAP_DSS_COLOR_RGB16)
  return 0;

 return config.video_port_width > 16;
}
