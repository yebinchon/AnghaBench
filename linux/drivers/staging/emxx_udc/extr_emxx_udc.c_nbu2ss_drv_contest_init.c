
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int dma_mask; int coherent_dma_mask; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_9__ {int dma_mask; TYPE_3__* parent; } ;
struct TYPE_7__ {int is_selfpowered; TYPE_4__ dev; int name; int speed; int * ep0; int * ops; } ;
struct nbu2ss_udc {TYPE_2__ gadget; TYPE_1__* ep; struct platform_device* pdev; scalar_t__ mA; int devstate; TYPE_3__* dev; int lock; } ;
struct TYPE_6__ {int ep; } ;


 int DMA_BIT_MASK (int) ;
 int USB_SPEED_UNKNOWN ;
 int USB_STATE_NOTATTACHED ;
 int dev_set_name (TYPE_4__*,char*) ;
 int device_initialize (TYPE_4__*) ;
 int driver_name ;
 int nbu2ss_drv_ep_init (struct nbu2ss_udc*) ;
 int nbu2ss_gadget_ops ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int nbu2ss_drv_contest_init(struct platform_device *pdev,
       struct nbu2ss_udc *udc)
{
 spin_lock_init(&udc->lock);
 udc->dev = &pdev->dev;

 udc->gadget.is_selfpowered = 1;
 udc->devstate = USB_STATE_NOTATTACHED;
 udc->pdev = pdev;
 udc->mA = 0;

 udc->pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);


 nbu2ss_drv_ep_init(udc);


 udc->gadget.ops = &nbu2ss_gadget_ops;
 udc->gadget.ep0 = &udc->ep[0].ep;
 udc->gadget.speed = USB_SPEED_UNKNOWN;
 udc->gadget.name = driver_name;


 device_initialize(&udc->gadget.dev);

 dev_set_name(&udc->gadget.dev, "gadget");
 udc->gadget.dev.parent = &pdev->dev;
 udc->gadget.dev.dma_mask = pdev->dev.dma_mask;

 return 0;
}
