
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;


 int BUG_ON (int) ;
 int OMAP_DSS_GFX ;
 int dispc_ovl_set_scaling_common (int,int ,int ,int ,int ,int,int,int,int,int ) ;
 int dispc_ovl_set_scaling_uv (int,int ,int ,int ,int ,int,int,int,int,int ) ;

__attribute__((used)) static void dispc_ovl_set_scaling(enum omap_plane plane,
  u16 orig_width, u16 orig_height,
  u16 out_width, u16 out_height,
  bool ilace, bool five_taps,
  bool fieldmode, enum omap_color_mode color_mode,
  u8 rotation)
{
 BUG_ON(plane == OMAP_DSS_GFX);

 dispc_ovl_set_scaling_common(plane,
   orig_width, orig_height,
   out_width, out_height,
   ilace, five_taps,
   fieldmode, color_mode,
   rotation);

 dispc_ovl_set_scaling_uv(plane,
  orig_width, orig_height,
  out_width, out_height,
  ilace, five_taps,
  fieldmode, color_mode,
  rotation);
}
