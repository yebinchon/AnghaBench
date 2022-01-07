
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int height; } ;
struct vc_data {unsigned int vc_scan_lines; TYPE_1__ vc_font; TYPE_2__* vc_sw; } ;
struct TYPE_6__ {struct vc_data* d; } ;
struct TYPE_5__ {int (* con_cursor ) (struct vc_data*,int ) ;} ;


 int CM_DRAW ;
 int MAX_NR_CONSOLES ;
 scalar_t__ con_is_visible (struct vc_data*) ;
 scalar_t__ cursor_size_lastfrom ;
 scalar_t__ cursor_size_lastto ;
 unsigned char inb_p (int ) ;
 int outb_p (unsigned char,int ) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int stub1 (struct vc_data*,int ) ;
 TYPE_3__* vc_cons ;
 int vc_resize (struct vc_data*,int ,int) ;
 TYPE_2__ vga_con ;
 int vga_lock ;
 unsigned int vga_video_font_height ;
 int vga_video_port_reg ;
 int vga_video_port_val ;

__attribute__((used)) static int vgacon_adjust_height(struct vc_data *vc, unsigned fontheight)
{
 unsigned char ovr, vde, fsr;
 int rows, maxscan, i;

 rows = vc->vc_scan_lines / fontheight;
 maxscan = rows * fontheight - 1;
 raw_spin_lock_irq(&vga_lock);
 outb_p(0x07, vga_video_port_reg);
 ovr = inb_p(vga_video_port_val);
 outb_p(0x09, vga_video_port_reg);
 fsr = inb_p(vga_video_port_val);
 raw_spin_unlock_irq(&vga_lock);

 vde = maxscan & 0xff;
 ovr = (ovr & 0xbd) +
     ((maxscan & 0x100) >> 7) + ((maxscan & 0x200) >> 3);
 fsr = (fsr & 0xe0) + (fontheight - 1);

 raw_spin_lock_irq(&vga_lock);
 outb_p(0x07, vga_video_port_reg);
 outb_p(ovr, vga_video_port_val);
 outb_p(0x09, vga_video_port_reg);
 outb_p(fsr, vga_video_port_val);
 outb_p(0x12, vga_video_port_reg);
 outb_p(vde, vga_video_port_val);
 raw_spin_unlock_irq(&vga_lock);
 vga_video_font_height = fontheight;

 for (i = 0; i < MAX_NR_CONSOLES; i++) {
  struct vc_data *c = vc_cons[i].d;

  if (c && c->vc_sw == &vga_con) {
   if (con_is_visible(c)) {

    cursor_size_lastfrom = 0;
    cursor_size_lastto = 0;
    c->vc_sw->con_cursor(c, CM_DRAW);
   }
   c->vc_font.height = fontheight;
   vc_resize(c, 0, rows);
  }
 }
 return 0;
}
