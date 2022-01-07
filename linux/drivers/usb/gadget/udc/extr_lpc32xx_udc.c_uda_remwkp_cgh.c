
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpc32xx_udc {int dev_status; TYPE_1__* board; } ;
struct TYPE_2__ {int (* rmwk_chgb ) (int) ;} ;


 int USB_DEVICE_REMOTE_WAKEUP ;
 int stub1 (int) ;

__attribute__((used)) static void uda_remwkp_cgh(struct lpc32xx_udc *udc)
{
 if (udc->board->rmwk_chgb != ((void*)0))
  udc->board->rmwk_chgb(udc->dev_status &
          (1 << USB_DEVICE_REMOTE_WAKEUP));
}
