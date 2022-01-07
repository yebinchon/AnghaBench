
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imstt_par {scalar_t__ ramdac; int* cmap_regs; int dc_regs; } ;
struct fb_info {struct imstt_par* par; } ;
typedef int __u32 ;


 void* CLKCTL ;




 scalar_t__ IBM ;
 void* MISCTL1 ;
 void* MISCTL2 ;
 size_t PIDXDATA ;
 size_t PIDXHI ;
 size_t PIDXLO ;
 void* PWRMNGMT ;
 int STGCTL ;
 void* SYNCCTL ;
 int eieio () ;
 int read_reg_le32 (int ,int ) ;
 int write_reg_le32 (int ,int ,int) ;

__attribute__((used)) static int
imsttfb_blank(int blank, struct fb_info *info)
{
 struct imstt_par *par = info->par;
 __u32 ctrl;

 ctrl = read_reg_le32(par->dc_regs, STGCTL);
 if (blank > 0) {
  switch (blank) {
  case 130:
  case 129:
   ctrl &= ~0x00000380;
   if (par->ramdac == IBM) {
    par->cmap_regs[PIDXHI] = 0; eieio();
    par->cmap_regs[PIDXLO] = MISCTL2; eieio();
    par->cmap_regs[PIDXDATA] = 0x55; eieio();
    par->cmap_regs[PIDXLO] = MISCTL1; eieio();
    par->cmap_regs[PIDXDATA] = 0x11; eieio();
    par->cmap_regs[PIDXLO] = SYNCCTL; eieio();
    par->cmap_regs[PIDXDATA] = 0x0f; eieio();
    par->cmap_regs[PIDXLO] = PWRMNGMT; eieio();
    par->cmap_regs[PIDXDATA] = 0x1f; eieio();
    par->cmap_regs[PIDXLO] = CLKCTL; eieio();
    par->cmap_regs[PIDXDATA] = 0xc0;
   }
   break;
  case 128:
   ctrl &= ~0x00000020;
   break;
  case 131:
   ctrl &= ~0x00000010;
   break;
  }
 } else {
  if (par->ramdac == IBM) {
   ctrl |= 0x000017b0;
   par->cmap_regs[PIDXHI] = 0; eieio();
   par->cmap_regs[PIDXLO] = CLKCTL; eieio();
   par->cmap_regs[PIDXDATA] = 0x01; eieio();
   par->cmap_regs[PIDXLO] = PWRMNGMT; eieio();
   par->cmap_regs[PIDXDATA] = 0x00; eieio();
   par->cmap_regs[PIDXLO] = SYNCCTL; eieio();
   par->cmap_regs[PIDXDATA] = 0x00; eieio();
   par->cmap_regs[PIDXLO] = MISCTL1; eieio();
   par->cmap_regs[PIDXDATA] = 0x01; eieio();
   par->cmap_regs[PIDXLO] = MISCTL2; eieio();
   par->cmap_regs[PIDXDATA] = 0x45; eieio();
  } else
   ctrl |= 0x00001780;
 }
 write_reg_le32(par->dc_regs, STGCTL, ctrl);
 return 0;
}
