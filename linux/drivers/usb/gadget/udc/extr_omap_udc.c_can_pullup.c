
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_udc {scalar_t__ vbus_active; scalar_t__ softconnect; scalar_t__ driver; } ;



__attribute__((used)) static int can_pullup(struct omap_udc *udc)
{
 return udc->driver && udc->softconnect && udc->vbus_active;
}
