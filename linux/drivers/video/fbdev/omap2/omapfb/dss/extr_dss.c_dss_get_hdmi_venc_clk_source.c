
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_display_type { ____Placeholder_omap_display_type } omap_display_type ;
typedef enum dss_hdmi_venc_clk_source_select { ____Placeholder_dss_hdmi_venc_clk_source_select } dss_hdmi_venc_clk_source_select ;


 int DSS_CONTROL ;
 int DSS_HDMI_M_PCLK ;
 int DSS_VENC_TV_CLK ;
 int OMAP_DISPLAY_TYPE_HDMI ;
 int OMAP_DISPLAY_TYPE_VENC ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int REG_GET (int ,int,int) ;
 int dss_feat_get_supported_displays (int ) ;

enum dss_hdmi_venc_clk_source_select dss_get_hdmi_venc_clk_source(void)
{
 enum omap_display_type displays;

 displays = dss_feat_get_supported_displays(OMAP_DSS_CHANNEL_DIGIT);
 if ((displays & OMAP_DISPLAY_TYPE_HDMI) == 0)
  return DSS_VENC_TV_CLK;

 if ((displays & OMAP_DISPLAY_TYPE_VENC) == 0)
  return DSS_HDMI_M_PCLK;

 return REG_GET(DSS_CONTROL, 15, 15);
}
