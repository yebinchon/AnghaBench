
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgastate {int vgabase; } ;


 int vga_rcrt (int ,int) ;
 int vga_wcrt (int ,int,int) ;

__attribute__((used)) static void vgaHWLock(struct vgastate *state)
{

 vga_wcrt(state->vgabase, 0x11, vga_rcrt(state->vgabase, 0x11) | 0x80);
}
