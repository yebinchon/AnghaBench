
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct neofb_par {int PanelDispCntlRegRead; int PanelDispCntlReg1; int state; } ;
struct fb_info {struct neofb_par* par; } ;
struct TYPE_3__ {int eax; int ebx; int ecx; } ;
typedef TYPE_1__ SMMRegisters ;







 int NEO_GR01_SUPPRESS_HSYNC ;
 int NEO_GR01_SUPPRESS_VSYNC ;
 int VGA_SR01_SCREEN_OFF ;
 int neoLock (int *) ;
 int neoUnlock () ;
 int tosh_smm (TYPE_1__*) ;
 int vga_rgfx (int *,int) ;
 int vga_rseq (int *,int) ;
 int vga_wgfx (int *,int,int) ;
 int vga_wseq (int *,int,int) ;

__attribute__((used)) static int neofb_blank(int blank_mode, struct fb_info *info)
{
 struct neofb_par *par = info->par;
 int seqflags, lcdflags, dpmsflags, reg, tmpdisp;





 neoUnlock();
 tmpdisp = vga_rgfx(((void*)0), 0x20) & 0x03;
 neoLock(&par->state);





 if (par->PanelDispCntlRegRead) {
  par->PanelDispCntlReg1 = tmpdisp;
 }
 par->PanelDispCntlRegRead = !blank_mode;

 switch (blank_mode) {
 case 130:
  seqflags = VGA_SR01_SCREEN_OFF;
  lcdflags = 0;
  dpmsflags = NEO_GR01_SUPPRESS_HSYNC |
       NEO_GR01_SUPPRESS_VSYNC;
  break;
 case 132:
  seqflags = VGA_SR01_SCREEN_OFF;
  lcdflags = 0;
  dpmsflags = NEO_GR01_SUPPRESS_HSYNC;
  break;
 case 128:
  seqflags = VGA_SR01_SCREEN_OFF;
  lcdflags = 0;
  dpmsflags = NEO_GR01_SUPPRESS_VSYNC;
  break;
 case 131:
  seqflags = VGA_SR01_SCREEN_OFF;
  lcdflags = ((par->PanelDispCntlReg1 | tmpdisp) & 0x02);
  dpmsflags = 0x00;
  break;
 case 129:
  seqflags = 0;
  lcdflags = ((par->PanelDispCntlReg1 | tmpdisp) & 0x02);
  dpmsflags = 0x00;
  break;
 default:

  return 1;
 }

 neoUnlock();
 reg = (vga_rseq(((void*)0), 0x01) & ~0x20) | seqflags;
 vga_wseq(((void*)0), 0x01, reg);
 reg = (vga_rgfx(((void*)0), 0x20) & ~0x02) | lcdflags;
 vga_wgfx(((void*)0), 0x20, reg);
 reg = (vga_rgfx(((void*)0), 0x01) & ~0xF0) | 0x80 | dpmsflags;
 vga_wgfx(((void*)0), 0x01, reg);
 neoLock(&par->state);
 return 0;
}
