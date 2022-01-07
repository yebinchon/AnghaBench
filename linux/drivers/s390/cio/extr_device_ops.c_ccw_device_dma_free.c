
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {int dma_pool; } ;


 int cio_gp_dma_free (int ,void*,size_t) ;

void ccw_device_dma_free(struct ccw_device *cdev, void *cpu_addr, size_t size)
{
 cio_gp_dma_free(cdev->private->dma_pool, cpu_addr, size);
}
