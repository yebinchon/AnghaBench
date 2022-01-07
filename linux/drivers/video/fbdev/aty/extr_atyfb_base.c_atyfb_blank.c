
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {scalar_t__ lcd_table; scalar_t__ asleep; scalar_t__ lock_blank; } ;


 int CRTC_GEN_CNTL ;





 int LCD_GEN_CNTL ;
 int LCD_ON ;
 int POWER_MANAGEMENT ;
 int PWR_BLON ;
 int aty_ld_lcd (int ,struct atyfb_par*) ;
 int aty_ld_le32 (int ,struct atyfb_par*) ;
 int aty_st_lcd (int ,int,struct atyfb_par*) ;
 int aty_st_le32 (int ,int,struct atyfb_par*) ;

__attribute__((used)) static int atyfb_blank(int blank, struct fb_info *info)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;
 u32 gen_cntl;

 if (par->lock_blank || par->asleep)
  return 0;
 gen_cntl = aty_ld_le32(CRTC_GEN_CNTL, par);
 gen_cntl &= ~0x400004c;
 switch (blank) {
 case 129:
  break;
 case 131:
  gen_cntl |= 0x4000040;
  break;
 case 128:
  gen_cntl |= 0x4000048;
  break;
 case 132:
  gen_cntl |= 0x4000044;
  break;
 case 130:
  gen_cntl |= 0x400004c;
  break;
 }
 aty_st_le32(CRTC_GEN_CNTL, gen_cntl, par);
 return 0;
}
