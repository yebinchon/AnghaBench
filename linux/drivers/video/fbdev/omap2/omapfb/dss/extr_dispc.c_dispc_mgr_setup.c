
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager_info {int cpr_coefs; int cpr_enable; int partial_alpha_enabled; int trans_enabled; int trans_key; int trans_key_type; int default_color; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int FEAT_CPR ;
 int dispc_mgr_enable_alpha_fixed_zorder (int,int ) ;
 int dispc_mgr_enable_cpr (int,int ) ;
 int dispc_mgr_enable_trans_key (int,int ) ;
 int dispc_mgr_set_cpr_coef (int,int *) ;
 int dispc_mgr_set_default_color (int,int ) ;
 int dispc_mgr_set_trans_key (int,int ,int ) ;
 scalar_t__ dss_has_feature (int ) ;

void dispc_mgr_setup(enum omap_channel channel,
  const struct omap_overlay_manager_info *info)
{
 dispc_mgr_set_default_color(channel, info->default_color);
 dispc_mgr_set_trans_key(channel, info->trans_key_type, info->trans_key);
 dispc_mgr_enable_trans_key(channel, info->trans_enabled);
 dispc_mgr_enable_alpha_fixed_zorder(channel,
   info->partial_alpha_enabled);
 if (dss_has_feature(FEAT_CPR)) {
  dispc_mgr_enable_cpr(channel, info->cpr_enable);
  dispc_mgr_set_cpr_coef(channel, &info->cpr_coefs);
 }
}
