
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_dss_rotation_type { ____Placeholder_omap_dss_rotation_type } omap_dss_rotation_type ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int FEAT_BURST_2D ;
 int OMAP_DSS_ROT_TILER ;
 int REG_FLD_MOD (int ,int,int,int) ;
 scalar_t__ dss_has_feature (int ) ;

__attribute__((used)) static void dispc_ovl_configure_burst_type(enum omap_plane plane,
  enum omap_dss_rotation_type rotation_type)
{
 if (dss_has_feature(FEAT_BURST_2D) == 0)
  return;

 if (rotation_type == OMAP_DSS_ROT_TILER)
  REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), 1, 29, 29);
 else
  REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), 0, 29, 29);
}
