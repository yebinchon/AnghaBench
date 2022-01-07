
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgastate {int vgabase; } ;
struct TYPE_2__ {int SeqCtrlIndex; int CrtCtrlIndex; int CrtMiscIO; int Overflow; int ClockingMode; void* ModeControl; void* EndVertRetrace; void* StartVertRetrace; void* EndHorizRetrace; void* StartHorizRetrace; void* HorizDisplayEnd; void* HorizontalTotal; } ;


 int VESA_HSYNC_SUSPEND ;
 int VESA_VSYNC_SUSPEND ;
 int VGA_MIS_R ;
 int VGA_MIS_W ;
 int VGA_SEQ_CLOCK_MODE ;
 int VGA_SEQ_I ;
 void* inb_p (int ) ;
 int outb_p (int,int ) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int vga_lock ;
 void* vga_r (int ,int ) ;
 int vga_rseq (int ,int ) ;
 TYPE_1__ vga_state ;
 int vga_vesa_blanked ;
 int vga_video_port_reg ;
 int vga_video_port_val ;
 int vga_w (int ,int ,int) ;
 int vga_wseq (int ,int ,int) ;

__attribute__((used)) static void vga_vesa_blank(struct vgastate *state, int mode)
{

 if (!vga_vesa_blanked) {
  raw_spin_lock_irq(&vga_lock);
  vga_state.SeqCtrlIndex = vga_r(state->vgabase, VGA_SEQ_I);
  vga_state.CrtCtrlIndex = inb_p(vga_video_port_reg);
  vga_state.CrtMiscIO = vga_r(state->vgabase, VGA_MIS_R);
  raw_spin_unlock_irq(&vga_lock);

  outb_p(0x00, vga_video_port_reg);
  vga_state.HorizontalTotal = inb_p(vga_video_port_val);
  outb_p(0x01, vga_video_port_reg);
  vga_state.HorizDisplayEnd = inb_p(vga_video_port_val);
  outb_p(0x04, vga_video_port_reg);
  vga_state.StartHorizRetrace = inb_p(vga_video_port_val);
  outb_p(0x05, vga_video_port_reg);
  vga_state.EndHorizRetrace = inb_p(vga_video_port_val);
  outb_p(0x07, vga_video_port_reg);
  vga_state.Overflow = inb_p(vga_video_port_val);
  outb_p(0x10, vga_video_port_reg);
  vga_state.StartVertRetrace = inb_p(vga_video_port_val);
  outb_p(0x11, vga_video_port_reg);
  vga_state.EndVertRetrace = inb_p(vga_video_port_val);
  outb_p(0x17, vga_video_port_reg);
  vga_state.ModeControl = inb_p(vga_video_port_val);
  vga_state.ClockingMode = vga_rseq(state->vgabase, VGA_SEQ_CLOCK_MODE);
 }



 raw_spin_lock_irq(&vga_lock);
 vga_wseq(state->vgabase, VGA_SEQ_CLOCK_MODE, vga_state.ClockingMode | 0x20);


 if ((vga_state.CrtMiscIO & 0x80) == 0x80)
  vga_w(state->vgabase, VGA_MIS_W, vga_state.CrtMiscIO & 0xEF);






 if (mode & VESA_VSYNC_SUSPEND) {
  outb_p(0x10, vga_video_port_reg);
  outb_p(0xff, vga_video_port_val);
  outb_p(0x11, vga_video_port_reg);
  outb_p(0x40, vga_video_port_val);
  outb_p(0x07, vga_video_port_reg);
  outb_p(vga_state.Overflow | 0x84, vga_video_port_val);
 }

 if (mode & VESA_HSYNC_SUSPEND) {





  outb_p(0x04, vga_video_port_reg);
  outb_p(0xff, vga_video_port_val);
  outb_p(0x05, vga_video_port_reg);
  outb_p(0x00, vga_video_port_val);
 }


 vga_w(state->vgabase, VGA_SEQ_I, vga_state.SeqCtrlIndex);
 outb_p(vga_state.CrtCtrlIndex, vga_video_port_reg);
 raw_spin_unlock_irq(&vga_lock);
}
