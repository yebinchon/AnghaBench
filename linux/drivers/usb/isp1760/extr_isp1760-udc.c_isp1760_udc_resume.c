
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
struct isp1760_udc {TYPE_2__ gadget; TYPE_1__* driver; } ;
struct TYPE_3__ {int (* resume ) (TYPE_2__*) ;} ;


 scalar_t__ USB_STATE_DEFAULT ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void isp1760_udc_resume(struct isp1760_udc *udc)
{
 if (udc->gadget.state < USB_STATE_DEFAULT)
  return;

 if (udc->driver->resume)
  udc->driver->resume(&udc->gadget);
}
