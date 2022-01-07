
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_CONFIG ;
 int FEAT_ALPHA_FIXED_ZORDER ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int OMAP_DSS_CHANNEL_LCD ;
 int REG_FLD_MOD (int ,int,int,int) ;
 int dss_has_feature (int ) ;

__attribute__((used)) static void dispc_mgr_enable_alpha_fixed_zorder(enum omap_channel ch,
  bool enable)
{
 if (!dss_has_feature(FEAT_ALPHA_FIXED_ZORDER))
  return;

 if (ch == OMAP_DSS_CHANNEL_LCD)
  REG_FLD_MOD(DISPC_CONFIG, enable, 18, 18);
 else if (ch == OMAP_DSS_CHANNEL_DIGIT)
  REG_FLD_MOD(DISPC_CONFIG, enable, 19, 19);
}
