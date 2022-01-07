
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vgabase; } ;
struct vt8623fb_info {TYPE_1__ state; } ;
struct fb_info {struct vt8623fb_info* par; } ;







 int fb_dbg (struct fb_info*,char*) ;
 int svga_wcrt_mask (int ,int,int,int) ;
 int svga_wseq_mask (int ,int,int,int) ;

__attribute__((used)) static int vt8623fb_blank(int blank_mode, struct fb_info *info)
{
 struct vt8623fb_info *par = info->par;

 switch (blank_mode) {
 case 129:
  fb_dbg(info, "unblank\n");
  svga_wcrt_mask(par->state.vgabase, 0x36, 0x00, 0x30);
  svga_wseq_mask(par->state.vgabase, 0x01, 0x00, 0x20);
  break;
 case 131:
  fb_dbg(info, "blank\n");
  svga_wcrt_mask(par->state.vgabase, 0x36, 0x00, 0x30);
  svga_wseq_mask(par->state.vgabase, 0x01, 0x20, 0x20);
  break;
 case 132:
  fb_dbg(info, "DPMS standby (hsync off)\n");
  svga_wcrt_mask(par->state.vgabase, 0x36, 0x10, 0x30);
  svga_wseq_mask(par->state.vgabase, 0x01, 0x20, 0x20);
  break;
 case 128:
  fb_dbg(info, "DPMS suspend (vsync off)\n");
  svga_wcrt_mask(par->state.vgabase, 0x36, 0x20, 0x30);
  svga_wseq_mask(par->state.vgabase, 0x01, 0x20, 0x20);
  break;
 case 130:
  fb_dbg(info, "DPMS off (no sync)\n");
  svga_wcrt_mask(par->state.vgabase, 0x36, 0x30, 0x30);
  svga_wseq_mask(par->state.vgabase, 0x01, 0x20, 0x20);
  break;
 }

 return 0;
}
