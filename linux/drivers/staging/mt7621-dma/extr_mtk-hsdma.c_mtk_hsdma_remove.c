
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mtk_hsdam_engine {int ddev; } ;


 int dma_async_device_unregister (int *) ;
 int mtk_hsdma_uninit (struct mtk_hsdam_engine*) ;
 int of_dma_controller_free (int ) ;
 struct mtk_hsdam_engine* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_hsdma_remove(struct platform_device *pdev)
{
 struct mtk_hsdam_engine *hsdma = platform_get_drvdata(pdev);

 mtk_hsdma_uninit(hsdma);

 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&hsdma->ddev);

 return 0;
}
