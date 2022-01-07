
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {int dev; TYPE_1__* private; } ;
struct TYPE_2__ {int dma_pool; } ;


 void* cio_gp_dma_zalloc (int ,int *,size_t) ;

void *ccw_device_dma_zalloc(struct ccw_device *cdev, size_t size)
{
 return cio_gp_dma_zalloc(cdev->private->dma_pool, &cdev->dev, size);
}
