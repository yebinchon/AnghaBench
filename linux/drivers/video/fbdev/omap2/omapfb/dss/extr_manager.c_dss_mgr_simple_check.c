
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager_info {scalar_t__ trans_key_type; scalar_t__ trans_enabled; scalar_t__ partial_alpha_enabled; } ;
struct omap_overlay_manager {int dummy; } ;


 int DSSERR (char*) ;
 int EINVAL ;
 int FEAT_ALPHA_FIXED_ZORDER ;
 scalar_t__ OMAP_DSS_COLOR_KEY_GFX_DST ;
 scalar_t__ dss_has_feature (int ) ;

int dss_mgr_simple_check(struct omap_overlay_manager *mgr,
  const struct omap_overlay_manager_info *info)
{
 if (dss_has_feature(FEAT_ALPHA_FIXED_ZORDER)) {





  if (info->partial_alpha_enabled && info->trans_enabled
   && info->trans_key_type != OMAP_DSS_COLOR_KEY_GFX_DST) {
   DSSERR("check_manager: illegal transparency key\n");
   return -EINVAL;
  }
 }

 return 0;
}
