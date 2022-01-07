
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * parent; } ;
struct TYPE_7__ {TYPE_4__ dev; scalar_t__ is_otg; int name; int speed; int max_speed; int * ops; } ;
struct musb {TYPE_3__ g; int controller; scalar_t__ is_active; int gadget_work; TYPE_2__* xceiv; } ;
struct TYPE_6__ {TYPE_1__* otg; } ;
struct TYPE_5__ {int state; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int MUSB_DEV_MODE (struct musb*) ;
 int OTG_STATE_B_IDLE ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_UNKNOWN ;
 int device_unregister (TYPE_4__*) ;
 int musb_driver_name ;
 int musb_g_init_endpoints (struct musb*) ;
 int musb_gadget_operations ;
 int musb_gadget_work ;
 int musb_platform_try_idle (struct musb*,int ) ;
 int usb_add_gadget_udc (int ,TYPE_3__*) ;

int musb_gadget_setup(struct musb *musb)
{
 int status;






 musb->g.ops = &musb_gadget_operations;
 musb->g.max_speed = USB_SPEED_HIGH;
 musb->g.speed = USB_SPEED_UNKNOWN;

 MUSB_DEV_MODE(musb);
 musb->xceiv->otg->state = OTG_STATE_B_IDLE;


 musb->g.name = musb_driver_name;

 musb->g.is_otg = 0;
 INIT_DELAYED_WORK(&musb->gadget_work, musb_gadget_work);
 musb_g_init_endpoints(musb);

 musb->is_active = 0;
 musb_platform_try_idle(musb, 0);

 status = usb_add_gadget_udc(musb->controller, &musb->g);
 if (status)
  goto err;

 return 0;
err:
 musb->g.dev.parent = ((void*)0);
 device_unregister(&musb->g.dev);
 return status;
}
