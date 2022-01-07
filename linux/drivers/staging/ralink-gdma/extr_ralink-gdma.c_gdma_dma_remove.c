
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct gdma_dma_dev {int ddev; int task; } ;


 int dma_async_device_unregister (int *) ;
 int of_dma_controller_free (int ) ;
 struct gdma_dma_dev* platform_get_drvdata (struct platform_device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int gdma_dma_remove(struct platform_device *pdev)
{
 struct gdma_dma_dev *dma_dev = platform_get_drvdata(pdev);

 tasklet_kill(&dma_dev->task);
 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&dma_dev->ddev);

 return 0;
}
