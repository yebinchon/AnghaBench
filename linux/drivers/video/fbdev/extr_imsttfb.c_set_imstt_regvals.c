
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct imstt_regvals {int pitch; int hes; int heb; int hsb; int ht; int ves; int veb; int vsb; int vt; int vil; } ;
struct imstt_par {scalar_t__ ramdac; int dc_regs; struct imstt_regvals init; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; struct imstt_par* par; } ;
typedef int __u32 ;


 int CMR ;
 int HCIV ;
 int HEB ;
 int HES ;
 int HRIR ;
 int HSB ;
 int HT ;
 scalar_t__ IBM ;
 int RRCIV ;
 int RRCR ;
 int RRSC ;
 int SCR ;
 int SPR ;
 int SRGCTL ;
 int STGCTL ;
 int TCDR ;
 scalar_t__ TVP ;
 int VCIV ;
 int VEB ;
 int VES ;
 int VIL ;
 int VSB ;
 int VT ;
 int set_imstt_regvals_ibm (struct imstt_par*,int ) ;
 int set_imstt_regvals_tvp (struct imstt_par*,int ) ;
 int write_reg_le32 (int ,int ,int) ;

__attribute__((used)) static void
set_imstt_regvals (struct fb_info *info, u_int bpp)
{
 struct imstt_par *par = info->par;
 struct imstt_regvals *init = &par->init;
 __u32 ctl, pitch, byteswap, scr;

 if (par->ramdac == IBM)
  set_imstt_regvals_ibm(par, bpp);
 else
  set_imstt_regvals_tvp(par, bpp);
 switch (bpp) {
  default:
  case 8:
   ctl = 0x17b1;
   pitch = init->pitch >> 2;
   byteswap = 0x000;
   break;
  case 16:
   ctl = 0x17b3;
   pitch = init->pitch >> 1;
   byteswap = 0x100;
   break;
  case 24:
   ctl = 0x17b9;
   pitch = init->pitch - (init->pitch >> 2);
   byteswap = 0x200;
   break;
  case 32:
   ctl = 0x17b5;
   pitch = init->pitch;
   byteswap = 0x300;
   break;
 }
 if (par->ramdac == TVP)
  ctl -= 0x30;

 write_reg_le32(par->dc_regs, HES, init->hes);
 write_reg_le32(par->dc_regs, HEB, init->heb);
 write_reg_le32(par->dc_regs, HSB, init->hsb);
 write_reg_le32(par->dc_regs, HT, init->ht);
 write_reg_le32(par->dc_regs, VES, init->ves);
 write_reg_le32(par->dc_regs, VEB, init->veb);
 write_reg_le32(par->dc_regs, VSB, init->vsb);
 write_reg_le32(par->dc_regs, VT, init->vt);
 write_reg_le32(par->dc_regs, VIL, init->vil);
 write_reg_le32(par->dc_regs, HCIV, 1);
 write_reg_le32(par->dc_regs, VCIV, 1);
 write_reg_le32(par->dc_regs, TCDR, 4);
 write_reg_le32(par->dc_regs, RRCIV, 1);
 write_reg_le32(par->dc_regs, RRSC, 0x980);
 write_reg_le32(par->dc_regs, RRCR, 0x11);

 if (par->ramdac == IBM) {
  write_reg_le32(par->dc_regs, HRIR, 0x0100);
  write_reg_le32(par->dc_regs, CMR, 0x00ff);
  write_reg_le32(par->dc_regs, SRGCTL, 0x0073);
 } else {
  write_reg_le32(par->dc_regs, HRIR, 0x0200);
  write_reg_le32(par->dc_regs, CMR, 0x01ff);
  write_reg_le32(par->dc_regs, SRGCTL, 0x0003);
 }

 switch (info->fix.smem_len) {
  case 0x200000:
   scr = 0x059d | byteswap;
   break;


  default:
   pitch >>= 1;
   scr = 0x150dd | byteswap;
   break;
 }

 write_reg_le32(par->dc_regs, SCR, scr);
 write_reg_le32(par->dc_regs, SPR, pitch);
 write_reg_le32(par->dc_regs, STGCTL, ctl);
}
