
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_uni_pagedir; int * vc_uni_pagedir_loc; int vc_visible_origin; } ;


 int con_free_unimap (struct vc_data*) ;
 scalar_t__ con_is_visible (struct vc_data*) ;
 int con_set_default_unimap (struct vc_data*) ;
 int vga_set_mem_top (struct vc_data*) ;
 int vga_vram_base ;
 int vgacon_refcount ;

__attribute__((used)) static void vgacon_deinit(struct vc_data *c)
{

 if (con_is_visible(c)) {
  c->vc_visible_origin = vga_vram_base;
  vga_set_mem_top(c);
 }

 if (!--vgacon_refcount)
  con_free_unimap(c);
 c->vc_uni_pagedir_loc = &c->vc_uni_pagedir;
 con_set_default_unimap(c);
}
