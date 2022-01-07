
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int vgabase; } ;
struct vt8623fb_info {TYPE_1__ state; } ;
struct fb_info {int node; struct vt8623fb_info* par; } ;


 int VGA_MIS_ENB_PLL_LOAD ;
 int VGA_MIS_R ;
 int VGA_MIS_W ;
 int fb_err (struct fb_info*,char*) ;
 int svga_compute_pll (int *,int,int*,int*,int*,int ) ;
 int svga_wseq_mask (int ,int,int,int) ;
 int udelay (int) ;
 int vga_r (int ,int ) ;
 int vga_w (int ,int ,int) ;
 int vga_wseq (int ,int,int) ;
 int vt8623_pll ;

__attribute__((used)) static void vt8623_set_pixclock(struct fb_info *info, u32 pixclock)
{
 struct vt8623fb_info *par = info->par;
 u16 m, n, r;
 u8 regval;
 int rv;

 rv = svga_compute_pll(&vt8623_pll, 1000000000 / pixclock, &m, &n, &r, info->node);
 if (rv < 0) {
  fb_err(info, "cannot set requested pixclock, keeping old value\n");
  return;
 }


 regval = vga_r(par->state.vgabase, VGA_MIS_R);
 vga_w(par->state.vgabase, VGA_MIS_W, regval | VGA_MIS_ENB_PLL_LOAD);


 vga_wseq(par->state.vgabase, 0x46, (n | (r << 6)));
 vga_wseq(par->state.vgabase, 0x47, m);

 udelay(1000);


 svga_wseq_mask(par->state.vgabase, 0x40, 0x02, 0x02);
 svga_wseq_mask(par->state.vgabase, 0x40, 0x00, 0x02);
}
