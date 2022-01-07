
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int vc_scrolldelta_helper (struct vc_data*,int,int ,void*,int ) ;
 int vga_rolled_over ;
 int vga_set_mem_top (struct vc_data*) ;
 scalar_t__ vga_vram_base ;
 int vga_vram_size ;

__attribute__((used)) static void vgacon_scrolldelta(struct vc_data *c, int lines)
{
 vc_scrolldelta_helper(c, lines, vga_rolled_over, (void *)vga_vram_base,
   vga_vram_size);
 vga_set_mem_top(c);
}
