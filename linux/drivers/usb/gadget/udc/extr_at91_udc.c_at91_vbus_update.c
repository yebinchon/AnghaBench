
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int vbus_active_low; } ;
struct at91_udc {unsigned int vbus; int gadget; TYPE_1__ board; } ;


 int at91_vbus_session (int *,unsigned int) ;

__attribute__((used)) static void at91_vbus_update(struct at91_udc *udc, unsigned value)
{
 value ^= udc->board.vbus_active_low;
 if (value != udc->vbus)
  at91_vbus_session(&udc->gadget, value);
}
