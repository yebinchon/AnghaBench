
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct omap_video_timings {int x_res; int y_res; scalar_t__ vbp; scalar_t__ vsw; scalar_t__ vfp; } ;
struct omap_dss_writeback_info {int color_mode; int rotation_type; int pre_mult_alpha; int mirror; int rotation; int height; int width; int buf_width; int p_uv_addr; int paddr; } ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int DISPC_OVL_ATTRIBUTES2 (int) ;
 int DSSDBG (char*,int ,int ,int,int,int ,int ,int ,int ,int ) ;
 int FLD_MOD (int ,int,int,int) ;
 int OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA ;
 int OMAP_DSS_OVL_CAP_SCALE ;
 int OMAP_DSS_WB ;
 int REG_FLD_MOD (int ,int,int,int ) ;
 int dispc_ovl_setup_common (int,int,int ,int ,int ,int const,int const,int,int,int ,int ,int ,int ,int ,int const,int ,int const,int ,int const,struct omap_video_timings const*,int) ;
 int dispc_read_reg (int ) ;
 int dispc_write_reg (int ,int ) ;
 int min (scalar_t__,int) ;

int dispc_wb_setup(const struct omap_dss_writeback_info *wi,
  bool mem_to_mem, const struct omap_video_timings *mgr_timings)
{
 int r;
 u32 l;
 enum omap_plane plane = OMAP_DSS_WB;
 const int pos_x = 0, pos_y = 0;
 const u8 zorder = 0, global_alpha = 0;
 const bool replication = 0;
 bool truncation;
 int in_width = mgr_timings->x_res;
 int in_height = mgr_timings->y_res;
 enum omap_overlay_caps caps =
  OMAP_DSS_OVL_CAP_SCALE | OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA;

 DSSDBG("dispc_wb_setup, pa %x, pa_uv %x, %d,%d -> %dx%d, cmode %x, "
  "rot %d, mir %d\n", wi->paddr, wi->p_uv_addr, in_width,
  in_height, wi->width, wi->height, wi->color_mode, wi->rotation,
  wi->mirror);

 r = dispc_ovl_setup_common(plane, caps, wi->paddr, wi->p_uv_addr,
  wi->buf_width, pos_x, pos_y, in_width, in_height, wi->width,
  wi->height, wi->color_mode, wi->rotation, wi->mirror, zorder,
  wi->pre_mult_alpha, global_alpha, wi->rotation_type,
  replication, mgr_timings, mem_to_mem);

 switch (wi->color_mode) {
 case 132:
 case 131:
 case 135:
 case 130:
 case 133:
 case 134:
 case 128:
 case 129:
  truncation = 1;
  break;
 default:
  truncation = 0;
  break;
 }


 l = dispc_read_reg(DISPC_OVL_ATTRIBUTES(plane));
 l = FLD_MOD(l, truncation, 10, 10);
 l = FLD_MOD(l, mem_to_mem, 19, 19);
 if (mem_to_mem)
  l = FLD_MOD(l, 1, 26, 24);
 else
  l = FLD_MOD(l, 0, 26, 24);
 dispc_write_reg(DISPC_OVL_ATTRIBUTES(plane), l);

 if (mem_to_mem) {

  REG_FLD_MOD(DISPC_OVL_ATTRIBUTES2(plane), 0, 7, 0);
 } else {
  int wbdelay;

  wbdelay = min(mgr_timings->vfp + mgr_timings->vsw +
   mgr_timings->vbp, 255);


  REG_FLD_MOD(DISPC_OVL_ATTRIBUTES2(plane), wbdelay, 7, 0);
 }

 return r;
}
