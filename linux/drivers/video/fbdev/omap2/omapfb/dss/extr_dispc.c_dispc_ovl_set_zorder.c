
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int OMAP_DSS_OVL_CAP_ZORDER ;
 int REG_FLD_MOD (int ,int ,int,int) ;

__attribute__((used)) static void dispc_ovl_set_zorder(enum omap_plane plane,
  enum omap_overlay_caps caps, u8 zorder)
{
 if ((caps & OMAP_DSS_OVL_CAP_ZORDER) == 0)
  return;

 REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), zorder, 27, 26);
}
