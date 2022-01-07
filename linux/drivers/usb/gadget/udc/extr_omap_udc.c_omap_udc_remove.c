
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {TYPE_1__* resource; } ;
struct TYPE_4__ {int gadget; int * done; } ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int done ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 TYPE_2__* udc ;
 int usb_del_gadget_udc (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int omap_udc_remove(struct platform_device *pdev)
{
 DECLARE_COMPLETION_ONSTACK(done);

 udc->done = &done;

 usb_del_gadget_udc(&udc->gadget);

 wait_for_completion(&done);

 release_mem_region(pdev->resource[0].start,
   pdev->resource[0].end - pdev->resource[0].start + 1);

 return 0;
}
