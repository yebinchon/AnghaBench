
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imstt_par {int dc_regs; } ;
struct TYPE_4__ {int line_length; } ;
struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; struct imstt_par* par; } ;
struct fb_fillrect {int color; int dy; int dx; int height; int width; scalar_t__ rop; } ;
typedef int __u32 ;


 int BI ;
 int BLTCTL ;
 int CLR ;
 int CNT ;
 int DP_OCTL ;
 int DSA ;
 int MBC ;
 scalar_t__ ROP_COPY ;
 int S1SA ;
 int SP ;
 int SSTATUS ;
 int read_reg_le32 (int ,int ) ;
 int write_reg_le32 (int ,int ,int) ;

__attribute__((used)) static void
imsttfb_fillrect(struct fb_info *info, const struct fb_fillrect *rect)
{
 struct imstt_par *par = info->par;
 __u32 Bpp, line_pitch, bgc, dx, dy, width, height;

 bgc = rect->color;
 bgc |= (bgc << 8);
 bgc |= (bgc << 16);

 Bpp = info->var.bits_per_pixel >> 3,
 line_pitch = info->fix.line_length;

 dy = rect->dy * line_pitch;
 dx = rect->dx * Bpp;
 height = rect->height;
 height--;
 width = rect->width * Bpp;
 width--;

 if (rect->rop == ROP_COPY) {
  while(read_reg_le32(par->dc_regs, SSTATUS) & 0x80);
  write_reg_le32(par->dc_regs, DSA, dy + dx);
  write_reg_le32(par->dc_regs, CNT, (height << 16) | width);
  write_reg_le32(par->dc_regs, DP_OCTL, line_pitch);
  write_reg_le32(par->dc_regs, BI, 0xffffffff);
  write_reg_le32(par->dc_regs, MBC, 0xffffffff);
  write_reg_le32(par->dc_regs, CLR, bgc);
  write_reg_le32(par->dc_regs, BLTCTL, 0x840);
  while(read_reg_le32(par->dc_regs, SSTATUS) & 0x80);
  while(read_reg_le32(par->dc_regs, SSTATUS) & 0x40);
 } else {
  while(read_reg_le32(par->dc_regs, SSTATUS) & 0x80);
  write_reg_le32(par->dc_regs, DSA, dy + dx);
  write_reg_le32(par->dc_regs, S1SA, dy + dx);
  write_reg_le32(par->dc_regs, CNT, (height << 16) | width);
  write_reg_le32(par->dc_regs, DP_OCTL, line_pitch);
  write_reg_le32(par->dc_regs, SP, line_pitch);
  write_reg_le32(par->dc_regs, BLTCTL, 0x40005);
  while(read_reg_le32(par->dc_regs, SSTATUS) & 0x80);
  while(read_reg_le32(par->dc_regs, SSTATUS) & 0x40);
 }
}
