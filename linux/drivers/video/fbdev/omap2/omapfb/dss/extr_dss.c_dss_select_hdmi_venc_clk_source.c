
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
 int REG_FLD_MOD (int ,int,int,int) ;
 int WARN_ON (int) ;
 int dss_feat_get_supported_displays (int ) ;

void dss_select_hdmi_venc_clk_source(enum dss_hdmi_venc_clk_source_select src)
{
 enum omap_display_type dp;
 dp = dss_feat_get_supported_displays(OMAP_DSS_CHANNEL_DIGIT);


 WARN_ON((src == DSS_VENC_TV_CLK) && !(dp & OMAP_DISPLAY_TYPE_VENC));
 WARN_ON((src == DSS_HDMI_M_PCLK) && !(dp & OMAP_DISPLAY_TYPE_HDMI));


 if ((dp & OMAP_DISPLAY_TYPE_VENC) && (dp & OMAP_DISPLAY_TYPE_HDMI))
  REG_FLD_MOD(DSS_CONTROL, src, 15, 15);
}
