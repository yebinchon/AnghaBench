
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_video_timings {int dummy; } ;
struct omap_overlay_info {int rotation_type; int global_alpha; int pre_mult_alpha; int zorder; int mirror; int rotation; int color_mode; int out_height; int out_width; int height; int width; int pos_y; int pos_x; int screen_width; int p_uv_addr; int paddr; } ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DSSDBG (char*,int,int *,int *,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int) ;
 int dispc_ovl_get_channel_out (int) ;
 int dispc_ovl_setup_common (int,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,struct omap_video_timings const*,int) ;
 int dss_feat_get_overlay_caps (int) ;

int dispc_ovl_setup(enum omap_plane plane, const struct omap_overlay_info *oi,
  bool replication, const struct omap_video_timings *mgr_timings,
  bool mem_to_mem)
{
 int r;
 enum omap_overlay_caps caps = dss_feat_get_overlay_caps(plane);
 enum omap_channel channel;

 channel = dispc_ovl_get_channel_out(plane);

 DSSDBG("dispc_ovl_setup %d, pa %pad, pa_uv %pad, sw %d, %d,%d, %dx%d ->"
  " %dx%d, cmode %x, rot %d, mir %d, chan %d repl %d\n",
  plane, &oi->paddr, &oi->p_uv_addr, oi->screen_width, oi->pos_x,
  oi->pos_y, oi->width, oi->height, oi->out_width, oi->out_height,
  oi->color_mode, oi->rotation, oi->mirror, channel, replication);

 r = dispc_ovl_setup_common(plane, caps, oi->paddr, oi->p_uv_addr,
  oi->screen_width, oi->pos_x, oi->pos_y, oi->width, oi->height,
  oi->out_width, oi->out_height, oi->color_mode, oi->rotation,
  oi->mirror, oi->zorder, oi->pre_mult_alpha, oi->global_alpha,
  oi->rotation_type, replication, mgr_timings, mem_to_mem);

 return r;
}
