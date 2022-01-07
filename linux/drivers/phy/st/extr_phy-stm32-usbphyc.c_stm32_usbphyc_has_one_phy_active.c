
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_usbphyc {int nphys; TYPE_1__** phys; } ;
struct TYPE_2__ {scalar_t__ active; } ;



__attribute__((used)) static bool stm32_usbphyc_has_one_phy_active(struct stm32_usbphyc *usbphyc)
{
 int i;

 for (i = 0; i < usbphyc->nphys; i++)
  if (usbphyc->phys[i]->active)
   return 1;

 return 0;
}
