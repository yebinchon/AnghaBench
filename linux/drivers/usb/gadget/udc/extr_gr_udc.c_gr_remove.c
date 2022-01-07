
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct gr_udc {int nepo; int nepi; TYPE_4__* ep0reqo; TYPE_3__* epo; TYPE_2__* ep0reqi; TYPE_1__* epi; int desc_pool; scalar_t__ driver; int gadget; scalar_t__ added; } ;
struct TYPE_8__ {int req; } ;
struct TYPE_7__ {int ep; } ;
struct TYPE_6__ {int req; } ;
struct TYPE_5__ {int ep; } ;


 int EBUSY ;
 int dma_pool_destroy (int ) ;
 int gr_dfs_delete (struct gr_udc*) ;
 int gr_ep_remove (struct gr_udc*,int,int) ;
 int gr_free_request (int *,int *) ;
 struct gr_udc* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static int gr_remove(struct platform_device *pdev)
{
 struct gr_udc *dev = platform_get_drvdata(pdev);
 int i;

 if (dev->added)
  usb_del_gadget_udc(&dev->gadget);
 if (dev->driver)
  return -EBUSY;

 gr_dfs_delete(dev);
 dma_pool_destroy(dev->desc_pool);
 platform_set_drvdata(pdev, ((void*)0));

 gr_free_request(&dev->epi[0].ep, &dev->ep0reqi->req);
 gr_free_request(&dev->epo[0].ep, &dev->ep0reqo->req);

 for (i = 0; i < dev->nepo; i++)
  gr_ep_remove(dev, i, 0);
 for (i = 0; i < dev->nepi; i++)
  gr_ep_remove(dev, i, 1);

 return 0;
}
