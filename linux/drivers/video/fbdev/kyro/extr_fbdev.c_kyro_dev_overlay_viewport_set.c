
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ ulOverlayOffset; int pSTGReg; } ;


 int DisableRamdacOutput (int ) ;
 int EINVAL ;
 int EnableOverlayPlane (int ) ;
 int EnableRamdacOutput (int ) ;
 int SetOverlayViewPort (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_1__ deviceInfo ;

__attribute__((used)) static int kyro_dev_overlay_viewport_set(u32 x, u32 y, u32 ulWidth, u32 ulHeight)
{
 if (deviceInfo.ulOverlayOffset == 0)

  return -EINVAL;


 DisableRamdacOutput(deviceInfo.pSTGReg);

 SetOverlayViewPort(deviceInfo.pSTGReg,
      x, y, x + ulWidth - 1, y + ulHeight - 1);

 EnableOverlayPlane(deviceInfo.pSTGReg);

 EnableRamdacOutput(deviceInfo.pSTGReg);

 return 0;
}
