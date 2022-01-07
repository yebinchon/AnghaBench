
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgastate {int vgabase; } ;


 int vgaHWLock (struct vgastate*) ;
 int vga_wgfx (int ,int,int) ;

__attribute__((used)) static void neoLock(struct vgastate *state)
{
 vga_wgfx(state->vgabase, 0x09, 0x00);
 vgaHWLock(state);
}
