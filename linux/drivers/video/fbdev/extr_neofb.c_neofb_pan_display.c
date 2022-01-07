
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgastate {int vgabase; } ;
struct neofb_par {struct vgastate state; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct TYPE_2__ {int xres_virtual; int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; struct neofb_par* par; } ;


 int DBG (char*) ;
 int neoLock (struct vgastate*) ;
 int neoUnlock () ;
 int vga_rgfx (int *,int) ;
 int vga_wcrt (int ,int,int) ;
 int vga_wgfx (int ,int,int) ;

__attribute__((used)) static int neofb_pan_display(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 struct neofb_par *par = info->par;
 struct vgastate *state = &par->state;
 int oldExtCRTDispAddr;
 int Base;

 DBG("neofb_update_start");

 Base = (var->yoffset * info->var.xres_virtual + var->xoffset) >> 2;
 Base *= (info->var.bits_per_pixel + 7) / 8;

 neoUnlock();




 vga_wcrt(state->vgabase, 0x0C, (Base & 0x00FF00) >> 8);
 vga_wcrt(state->vgabase, 0x0D, (Base & 0x00FF));






 oldExtCRTDispAddr = vga_rgfx(((void*)0), 0x0E);
 vga_wgfx(state->vgabase, 0x0E, (((Base >> 16) & 0x0f) | (oldExtCRTDispAddr & 0xf0)));

 neoLock(state);

 return 0;
}
