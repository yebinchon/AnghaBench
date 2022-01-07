
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int vgabase; } ;
struct s3fb_info {scalar_t__ chip; TYPE_1__ state; } ;
struct fb_info {int node; struct s3fb_info* par; } ;


 scalar_t__ CHIP_260_VIRGE_MX ;
 scalar_t__ CHIP_357_VIRGE_GX2 ;
 scalar_t__ CHIP_359_VIRGE_GX2P ;
 scalar_t__ CHIP_360_TRIO3D_1X ;
 scalar_t__ CHIP_362_TRIO3D_2X ;
 scalar_t__ CHIP_365_TRIO3D ;
 scalar_t__ CHIP_368_TRIO3D_2X ;
 int VGA_MIS_ENB_PLL_LOAD ;
 int VGA_MIS_R ;
 int VGA_MIS_W ;
 int fb_err (struct fb_info*,char*) ;
 int s3_pll ;
 int s3_trio3d_pll ;
 int svga_compute_pll (int *,int,int*,int*,int*,int ) ;
 int udelay (int) ;
 int vga_r (int ,int ) ;
 int vga_rseq (int ,int) ;
 int vga_w (int ,int ,int) ;
 int vga_wseq (int ,int,int) ;

__attribute__((used)) static void s3_set_pixclock(struct fb_info *info, u32 pixclock)
{
 struct s3fb_info *par = info->par;
 u16 m, n, r;
 u8 regval;
 int rv;

 rv = svga_compute_pll((par->chip == CHIP_365_TRIO3D) ? &s3_trio3d_pll : &s3_pll,
         1000000000 / pixclock, &m, &n, &r, info->node);
 if (rv < 0) {
  fb_err(info, "cannot set requested pixclock, keeping old value\n");
  return;
 }


 regval = vga_r(par->state.vgabase, VGA_MIS_R);
 vga_w(par->state.vgabase, VGA_MIS_W, regval | VGA_MIS_ENB_PLL_LOAD);


 if (par->chip == CHIP_357_VIRGE_GX2 ||
     par->chip == CHIP_359_VIRGE_GX2P ||
     par->chip == CHIP_360_TRIO3D_1X ||
     par->chip == CHIP_362_TRIO3D_2X ||
     par->chip == CHIP_368_TRIO3D_2X ||
     par->chip == CHIP_260_VIRGE_MX) {
  vga_wseq(par->state.vgabase, 0x12, (n - 2) | ((r & 3) << 6));
  vga_wseq(par->state.vgabase, 0x29, r >> 2);
 } else
  vga_wseq(par->state.vgabase, 0x12, (n - 2) | (r << 5));
 vga_wseq(par->state.vgabase, 0x13, m - 2);

 udelay(1000);


 regval = vga_rseq (par->state.vgabase, 0x15);
 vga_wseq(par->state.vgabase, 0x15, regval & ~(1<<5));
 vga_wseq(par->state.vgabase, 0x15, regval | (1<<5));
 vga_wseq(par->state.vgabase, 0x15, regval & ~(1<<5));
}
