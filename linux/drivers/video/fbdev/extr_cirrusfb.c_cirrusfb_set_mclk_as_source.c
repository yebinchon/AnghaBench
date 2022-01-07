
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int device; struct cirrusfb_info* par; } ;
struct cirrusfb_info {int regbase; } ;


 int CL_SEQR1E ;
 int CL_SEQR1F ;
 int assert (int ) ;
 int dev_dbg (int ,char*,char*) ;
 int vga_rseq (int ,int ) ;
 int vga_wseq (int ,int ,unsigned char) ;

__attribute__((used)) static void cirrusfb_set_mclk_as_source(const struct fb_info *info, int div)
{
 struct cirrusfb_info *cinfo = info->par;
 unsigned char old1f, old1e;

 assert(cinfo != ((void*)0));
 old1f = vga_rseq(cinfo->regbase, CL_SEQR1F) & ~0x40;

 if (div) {
  dev_dbg(info->device, "Set %s as pixclock source.\n",
   (div == 2) ? "MCLK/2" : "MCLK");
  old1f |= 0x40;
  old1e = vga_rseq(cinfo->regbase, CL_SEQR1E) & ~0x1;
  if (div == 2)
   old1e |= 1;

  vga_wseq(cinfo->regbase, CL_SEQR1E, old1e);
 }
 vga_wseq(cinfo->regbase, CL_SEQR1F, old1f);
}
