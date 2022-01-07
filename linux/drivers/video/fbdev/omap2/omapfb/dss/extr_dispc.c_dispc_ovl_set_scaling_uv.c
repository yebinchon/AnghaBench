
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;


 int BUG () ;
 int DISPC_COLOR_COMPONENT_UV ;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int DISPC_OVL_ATTRIBUTES2 (int) ;
 int FEAT_HANDLE_UV_SEPARATE ;



 int OMAP_DSS_ROT_0 ;
 int OMAP_DSS_ROT_180 ;
 int OMAP_DSS_WB ;
 int REG_FLD_MOD (int ,int,int,int) ;
 int dispc_ovl_set_accu_uv (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int ) ;
 int dispc_ovl_set_scale_param (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int ,int ) ;
 int dss_has_feature (int ) ;

__attribute__((used)) static void dispc_ovl_set_scaling_uv(enum omap_plane plane,
  u16 orig_width, u16 orig_height,
  u16 out_width, u16 out_height,
  bool ilace, bool five_taps,
  bool fieldmode, enum omap_color_mode color_mode,
  u8 rotation)
{
 int scale_x = out_width != orig_width;
 int scale_y = out_height != orig_height;
 bool chroma_upscale = plane != OMAP_DSS_WB ? 1 : 0;

 if (!dss_has_feature(FEAT_HANDLE_UV_SEPARATE))
  return;
 if ((color_mode != 128 &&
   color_mode != 129 &&
   color_mode != 130)) {

  if (plane != OMAP_DSS_WB)
   REG_FLD_MOD(DISPC_OVL_ATTRIBUTES2(plane), 0, 8, 8);
  return;
 }

 dispc_ovl_set_accu_uv(plane, orig_width, orig_height, out_width,
   out_height, ilace, color_mode, rotation);

 switch (color_mode) {
 case 130:
  if (chroma_upscale) {

   orig_height >>= 1;
   orig_width >>= 1;
  } else {

   orig_height <<= 1;
   orig_width <<= 1;
  }

  break;
 case 128:
 case 129:

  if (rotation == OMAP_DSS_ROT_0 ||
    rotation == OMAP_DSS_ROT_180) {
   if (chroma_upscale)

    orig_width >>= 1;
   else

    orig_width <<= 1;
  }


  if (rotation != OMAP_DSS_ROT_0)
   scale_x = scale_y = 1;

  break;
 default:
  BUG();
  return;
 }

 if (out_width != orig_width)
  scale_x = 1;
 if (out_height != orig_height)
  scale_y = 1;

 dispc_ovl_set_scale_param(plane, orig_width, orig_height,
   out_width, out_height, five_taps,
    rotation, DISPC_COLOR_COMPONENT_UV);

 if (plane != OMAP_DSS_WB)
  REG_FLD_MOD(DISPC_OVL_ATTRIBUTES2(plane),
   (scale_x || scale_y) ? 1 : 0, 8, 8);


 REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), scale_x ? 1 : 0, 5, 5);

 REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), scale_y ? 1 : 0, 6, 6);
}
