
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rproc {int has_iommu; struct omap_rproc* priv; } ;
struct TYPE_4__ {struct omap_rproc_pdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_rproc_pdata {int firmware; int name; } ;
struct omap_rproc {struct rproc* rproc; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dma_set_coherent_mask (TYPE_1__*,int ) ;
 int omap_rproc_ops ;
 int platform_set_drvdata (struct platform_device*,struct rproc*) ;
 int rproc_add (struct rproc*) ;
 struct rproc* rproc_alloc (TYPE_1__*,int ,int *,int ,int) ;
 int rproc_free (struct rproc*) ;

__attribute__((used)) static int omap_rproc_probe(struct platform_device *pdev)
{
 struct omap_rproc_pdata *pdata = pdev->dev.platform_data;
 struct omap_rproc *oproc;
 struct rproc *rproc;
 int ret;

 ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));
 if (ret) {
  dev_err(&pdev->dev, "dma_set_coherent_mask: %d\n", ret);
  return ret;
 }

 rproc = rproc_alloc(&pdev->dev, pdata->name, &omap_rproc_ops,
       pdata->firmware, sizeof(*oproc));
 if (!rproc)
  return -ENOMEM;

 oproc = rproc->priv;
 oproc->rproc = rproc;

 rproc->has_iommu = 1;

 platform_set_drvdata(pdev, rproc);

 ret = rproc_add(rproc);
 if (ret)
  goto free_rproc;

 return 0;

free_rproc:
 rproc_free(rproc);
 return ret;
}
