
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_plane_info {int out_height; int out_width; int mem_idx; scalar_t__ mirror; scalar_t__ channel_out; int enabled; int pos_y; int pos_x; } ;
struct omapfb_info {scalar_t__ num_overlays; struct omap_overlay** overlays; } ;
struct omap_overlay_info {int out_height; int out_width; int pos_y; int pos_x; } ;
struct omap_overlay {int (* is_enabled ) (struct omap_overlay*) ;int (* get_overlay_info ) (struct omap_overlay*,struct omap_overlay_info*) ;} ;
struct fb_info {int dummy; } ;


 struct omapfb_info* FB2OFB (struct fb_info*) ;
 int get_mem_idx (struct omapfb_info*) ;
 int memset (struct omapfb_plane_info*,int ,int) ;
 int stub1 (struct omap_overlay*,struct omap_overlay_info*) ;
 int stub2 (struct omap_overlay*) ;

__attribute__((used)) static int omapfb_query_plane(struct fb_info *fbi, struct omapfb_plane_info *pi)
{
 struct omapfb_info *ofbi = FB2OFB(fbi);

 if (ofbi->num_overlays == 0) {
  memset(pi, 0, sizeof(*pi));
 } else {
  struct omap_overlay *ovl;
  struct omap_overlay_info ovli;

  ovl = ofbi->overlays[0];
  ovl->get_overlay_info(ovl, &ovli);

  pi->pos_x = ovli.pos_x;
  pi->pos_y = ovli.pos_y;
  pi->enabled = ovl->is_enabled(ovl);
  pi->channel_out = 0;
  pi->mirror = 0;
  pi->mem_idx = get_mem_idx(ofbi);
  pi->out_width = ovli.out_width;
  pi->out_height = ovli.out_height;
 }

 return 0;
}
