
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kyrofb_info {int PIXCLK; int VSP; int HSP; } ;
struct TYPE_3__ {int bits_per_pixel; int xres; int yres; } ;
struct fb_info {TYPE_1__ var; struct kyrofb_info* par; } ;
struct TYPE_4__ {int ulNextFreeVidMem; scalar_t__ ulOverlayOffset; int pSTGReg; } ;


 int DisableRamdacOutput (int ) ;
 int DisableVGA (int ) ;
 int EINVAL ;
 int EnableRamdacOutput (int ) ;
 scalar_t__ InitialiseRamdac (int ,int,int,int,int ,int ,int *) ;
 int ResetOverlayRegisters (int ) ;
 int SetupVTG (int ,struct kyrofb_info*) ;
 int StartVTG (int ) ;
 int StopVTG (int ) ;
 TYPE_2__ deviceInfo ;

__attribute__((used)) static int kyro_dev_video_mode_set(struct fb_info *info)
{
 struct kyrofb_info *par = info->par;


 StopVTG(deviceInfo.pSTGReg);
 DisableRamdacOutput(deviceInfo.pSTGReg);


 DisableVGA(deviceInfo.pSTGReg);

 if (InitialiseRamdac(deviceInfo.pSTGReg,
        info->var.bits_per_pixel,
        info->var.xres, info->var.yres,
        par->HSP, par->VSP, &par->PIXCLK) < 0)
  return -EINVAL;

 SetupVTG(deviceInfo.pSTGReg, par);

 ResetOverlayRegisters(deviceInfo.pSTGReg);


 EnableRamdacOutput(deviceInfo.pSTGReg);
 StartVTG(deviceInfo.pSTGReg);

 deviceInfo.ulNextFreeVidMem = info->var.xres * info->var.yres *
          info->var.bits_per_pixel;
 deviceInfo.ulOverlayOffset = 0;

 return 0;
}
