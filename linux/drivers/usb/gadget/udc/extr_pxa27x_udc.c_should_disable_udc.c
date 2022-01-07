
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_udc {int transceiver; int vbus_sensed; int driver; int pullup_on; } ;


 int IS_ERR_OR_NULL (int ) ;

__attribute__((used)) static int should_disable_udc(struct pxa_udc *udc)
{
 int put_off;

 put_off = ((!udc->pullup_on) || (!udc->driver));
 put_off |= ((!udc->vbus_sensed) && (!IS_ERR_OR_NULL(udc->transceiver)));
 return put_off;
}
