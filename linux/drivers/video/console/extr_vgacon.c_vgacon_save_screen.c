
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vc_data {scalar_t__ vc_screenbuf_size; scalar_t__ vc_origin; scalar_t__ vc_screenbuf; int vc_y; int vc_x; } ;
struct TYPE_2__ {int orig_y; int orig_x; } ;


 int scr_memcpyw (int *,int *,scalar_t__) ;
 TYPE_1__ screen_info ;
 int vga_is_gfx ;
 scalar_t__ vga_vram_size ;

__attribute__((used)) static void vgacon_save_screen(struct vc_data *c)
{
 static int vga_bootup_console = 0;

 if (!vga_bootup_console) {




  vga_bootup_console = 1;
  c->vc_x = screen_info.orig_x;
  c->vc_y = screen_info.orig_y;
 }




 if (!vga_is_gfx)
  scr_memcpyw((u16 *) c->vc_screenbuf, (u16 *) c->vc_origin,
       c->vc_screenbuf_size > vga_vram_size ? vga_vram_size : c->vc_screenbuf_size);
}
