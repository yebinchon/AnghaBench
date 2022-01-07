
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i740fb_par {int dummy; } ;
struct fb_info {struct i740fb_par* par; } ;


 int DPMS_SYNC_SELECT ;
 int EINVAL ;





 int HSYNC_OFF ;
 int HSYNC_ON ;
 scalar_t__ SRX ;
 int VSYNC_OFF ;
 int VSYNC_ON ;
 int XRX ;
 int i740inb (struct i740fb_par*,scalar_t__) ;
 int i740outb (struct i740fb_par*,scalar_t__,unsigned char) ;
 int i740outreg (struct i740fb_par*,int ,int ,int) ;

__attribute__((used)) static int i740fb_blank(int blank_mode, struct fb_info *info)
{
 struct i740fb_par *par = info->par;

 unsigned char SEQ01;
 int DPMSSyncSelect;

 switch (blank_mode) {
 case 129:
 case 131:
  SEQ01 = 0x00;
  DPMSSyncSelect = HSYNC_ON | VSYNC_ON;
  break;
 case 128:
  SEQ01 = 0x20;
  DPMSSyncSelect = HSYNC_ON | VSYNC_OFF;
  break;
 case 132:
  SEQ01 = 0x20;
  DPMSSyncSelect = HSYNC_OFF | VSYNC_ON;
  break;
 case 130:
  SEQ01 = 0x20;
  DPMSSyncSelect = HSYNC_OFF | VSYNC_OFF;
  break;
 default:
  return -EINVAL;
 }

 i740outb(par, SRX, 0x01);
 SEQ01 |= i740inb(par, SRX + 1) & ~0x20;
 i740outb(par, SRX, 0x01);
 i740outb(par, SRX + 1, SEQ01);


 i740outreg(par, XRX, DPMS_SYNC_SELECT, DPMSSyncSelect);


 return (blank_mode == 131) ? 1 : 0;
}
