
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;


 int DISPC_GLOBAL_ALPHA ;
 int OMAP_DSS_OVL_CAP_GLOBAL_ALPHA ;
 int REG_FLD_MOD (int ,int ,int,int) ;

__attribute__((used)) static void dispc_ovl_setup_global_alpha(enum omap_plane plane,
  enum omap_overlay_caps caps, u8 global_alpha)
{
 static const unsigned shifts[] = { 0, 8, 16, 24, };
 int shift;

 if ((caps & OMAP_DSS_OVL_CAP_GLOBAL_ALPHA) == 0)
  return;

 shift = shifts[plane];
 REG_FLD_MOD(DISPC_GLOBAL_ALPHA, global_alpha, shift + 7, shift);
}
