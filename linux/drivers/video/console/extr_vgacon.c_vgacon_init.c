
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; } ;
struct vc_data {int vc_complement_mask; int vc_hi_font_mask; struct uni_pagedir** vc_uni_pagedir_loc; TYPE_1__ vc_font; int vc_scan_lines; int vc_rows; int vc_cols; int vc_can_do_color; } ;
struct uni_pagedir {int dummy; } ;
struct TYPE_4__ {int flags; } ;


 int VIDEO_FLAGS_NOCURSOR ;
 int con_free_unimap (struct vc_data*) ;
 int con_set_default_unimap (struct vc_data*) ;
 int global_cursor_default ;
 TYPE_2__ screen_info ;
 int vc_resize (struct vc_data*,int ,int ) ;
 scalar_t__ vga_512_chars ;
 int vga_can_do_color ;
 int vga_scan_lines ;
 int vga_video_font_height ;
 int vga_video_num_columns ;
 int vga_video_num_lines ;
 int vgacon_refcount ;
 struct uni_pagedir* vgacon_uni_pagedir ;

__attribute__((used)) static void vgacon_init(struct vc_data *c, int init)
{
 struct uni_pagedir *p;






 c->vc_can_do_color = vga_can_do_color;


 if (init) {
  c->vc_cols = vga_video_num_columns;
  c->vc_rows = vga_video_num_lines;
 } else
  vc_resize(c, vga_video_num_columns, vga_video_num_lines);

 c->vc_scan_lines = vga_scan_lines;
 c->vc_font.height = vga_video_font_height;
 c->vc_complement_mask = 0x7700;
 if (vga_512_chars)
  c->vc_hi_font_mask = 0x0800;
 p = *c->vc_uni_pagedir_loc;
 if (c->vc_uni_pagedir_loc != &vgacon_uni_pagedir) {
  con_free_unimap(c);
  c->vc_uni_pagedir_loc = &vgacon_uni_pagedir;
  vgacon_refcount++;
 }
 if (!vgacon_uni_pagedir && p)
  con_set_default_unimap(c);


 if (global_cursor_default == -1)
  global_cursor_default =
   !(screen_info.flags & VIDEO_FLAGS_NOCURSOR);
}
