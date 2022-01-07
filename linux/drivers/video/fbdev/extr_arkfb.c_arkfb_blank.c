
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {struct arkfb_info* par; } ;
struct TYPE_2__ {int vgabase; } ;
struct arkfb_info {TYPE_1__ state; } ;







 int fb_dbg (struct fb_info*,char*) ;
 int svga_wcrt_mask (int ,int,int,int) ;
 int svga_wseq_mask (int ,int,int,int) ;

__attribute__((used)) static int arkfb_blank(int blank_mode, struct fb_info *info)
{
 struct arkfb_info *par = info->par;

 switch (blank_mode) {
 case 129:
  fb_dbg(info, "unblank\n");
  svga_wseq_mask(par->state.vgabase, 0x01, 0x00, 0x20);
  svga_wcrt_mask(par->state.vgabase, 0x17, 0x80, 0x80);
  break;
 case 131:
  fb_dbg(info, "blank\n");
  svga_wseq_mask(par->state.vgabase, 0x01, 0x20, 0x20);
  svga_wcrt_mask(par->state.vgabase, 0x17, 0x80, 0x80);
  break;
 case 130:
 case 132:
 case 128:
  fb_dbg(info, "sync down\n");
  svga_wseq_mask(par->state.vgabase, 0x01, 0x20, 0x20);
  svga_wcrt_mask(par->state.vgabase, 0x17, 0x00, 0x80);
  break;
 }
 return 0;
}
