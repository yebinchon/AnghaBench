
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbu2ss_udc {int ep0state; scalar_t__ remote_wakeup; int devstate; } ;


 int EP0_IDLE ;
 int USB_STATE_DEFAULT ;
 int _nbu2ss_quiesce (struct nbu2ss_udc*) ;

__attribute__((used)) static inline void _nbu2ss_int_bus_reset(struct nbu2ss_udc *udc)
{
 udc->devstate = USB_STATE_DEFAULT;
 udc->remote_wakeup = 0;

 _nbu2ss_quiesce(udc);

 udc->ep0state = EP0_IDLE;
}
