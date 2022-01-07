
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ci_hdrc {TYPE_1__* platdata; } ;
struct TYPE_2__ {scalar_t__ phy_mode; } ;


 int ETIMEDOUT ;
 int OP_ULPI_VIEWPORT ;
 int ULPI_SYNC_STATE ;
 scalar_t__ USBPHY_INTERFACE_MODE_ULPI ;
 scalar_t__ hw_read (struct ci_hdrc*,int ,int ) ;
 int udelay (int) ;

int ci_ulpi_resume(struct ci_hdrc *ci)
{
 int cnt = 100000;

 if (ci->platdata->phy_mode != USBPHY_INTERFACE_MODE_ULPI)
  return 0;

 while (cnt-- > 0) {
  if (hw_read(ci, OP_ULPI_VIEWPORT, ULPI_SYNC_STATE))
   return 0;
  udelay(1);
 }

 return -ETIMEDOUT;
}
