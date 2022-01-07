
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_dss_rotation_type { ____Placeholder_omap_dss_rotation_type } omap_dss_rotation_type ;
typedef enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int FEAT_ROWREPEATENABLE ;
 int OMAP_DSS_COLOR_NV12 ;
 int OMAP_DSS_COLOR_UYVY ;
 int OMAP_DSS_COLOR_YUV2 ;




 int OMAP_DSS_ROT_TILER ;
 int REG_FLD_MOD (int ,int,int,int) ;
 scalar_t__ dss_has_feature (int ) ;

__attribute__((used)) static void dispc_ovl_set_rotation_attrs(enum omap_plane plane, u8 rotation,
  enum omap_dss_rotation_type rotation_type,
  bool mirroring, enum omap_color_mode color_mode)
{
 bool row_repeat = 0;
 int vidrot = 0;

 if (color_mode == OMAP_DSS_COLOR_YUV2 ||
   color_mode == OMAP_DSS_COLOR_UYVY) {

  if (mirroring) {
   switch (rotation) {
   case 131:
    vidrot = 2;
    break;
   case 128:
    vidrot = 1;
    break;
   case 130:
    vidrot = 0;
    break;
   case 129:
    vidrot = 3;
    break;
   }
  } else {
   switch (rotation) {
   case 131:
    vidrot = 0;
    break;
   case 128:
    vidrot = 1;
    break;
   case 130:
    vidrot = 2;
    break;
   case 129:
    vidrot = 3;
    break;
   }
  }

  if (rotation == 128 || rotation == 129)
   row_repeat = 1;
  else
   row_repeat = 0;
 }






 if (color_mode == OMAP_DSS_COLOR_NV12 &&
   rotation_type != OMAP_DSS_ROT_TILER)
  vidrot = 1;

 REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), vidrot, 13, 12);
 if (dss_has_feature(FEAT_ROWREPEATENABLE))
  REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane),
   row_repeat ? 1 : 0, 18, 18);

 if (color_mode == OMAP_DSS_COLOR_NV12) {
  bool doublestride = (rotation_type == OMAP_DSS_ROT_TILER) &&
     (rotation == 131 ||
     rotation == 130);

  REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), doublestride, 22, 22);
 }

}
