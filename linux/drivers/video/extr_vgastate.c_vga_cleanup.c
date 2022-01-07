
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgastate {int * vidstate; } ;
struct regstate {int attr; int vga_cmap; int vga_text; int vga_font1; int vga_font0; } ;


 int kfree (struct regstate*) ;
 int vfree (int ) ;

__attribute__((used)) static void vga_cleanup(struct vgastate *state)
{
 if (state->vidstate != ((void*)0)) {
  struct regstate *saved = (struct regstate *) state->vidstate;

  vfree(saved->vga_font0);
  vfree(saved->vga_font1);
  vfree(saved->vga_text);
  vfree(saved->vga_cmap);
  vfree(saved->attr);
  kfree(saved);
  state->vidstate = ((void*)0);
 }
}
