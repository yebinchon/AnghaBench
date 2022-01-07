
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 scalar_t__ VIDEO_TYPE_VGAC ;
 int con_is_visible (struct vc_data*) ;
 scalar_t__ vga_palette_blanked ;
 int vga_set_palette (struct vc_data*,unsigned char const*) ;
 scalar_t__ vga_video_type ;

__attribute__((used)) static void vgacon_set_palette(struct vc_data *vc, const unsigned char *table)
{
 if (vga_video_type != VIDEO_TYPE_VGAC || vga_palette_blanked
     || !con_is_visible(vc))
  return;
 vga_set_palette(vc, table);
}
