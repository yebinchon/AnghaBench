
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {struct q6v5_wcss* priv; } ;
struct q6v5_wcss {int q6v5; int * dev; } ;
struct platform_device {int dev; int name; } ;


 int ENOMEM ;
 int WCSS_CRASH_REASON ;
 int dev_err (int *,char*) ;
 int platform_set_drvdata (struct platform_device*,struct rproc*) ;
 int q6v5_alloc_memory_region (struct q6v5_wcss*) ;
 int q6v5_wcss_init_mmio (struct q6v5_wcss*,struct platform_device*) ;
 int q6v5_wcss_init_reset (struct q6v5_wcss*) ;
 int q6v5_wcss_ops ;
 int qcom_q6v5_init (int *,struct platform_device*,struct rproc*,int ,int *) ;
 int rproc_add (struct rproc*) ;
 struct rproc* rproc_alloc (int *,int ,int *,char*,int) ;
 int rproc_free (struct rproc*) ;

__attribute__((used)) static int q6v5_wcss_probe(struct platform_device *pdev)
{
 struct q6v5_wcss *wcss;
 struct rproc *rproc;
 int ret;

 rproc = rproc_alloc(&pdev->dev, pdev->name, &q6v5_wcss_ops,
       "IPQ8074/q6_fw.mdt", sizeof(*wcss));
 if (!rproc) {
  dev_err(&pdev->dev, "failed to allocate rproc\n");
  return -ENOMEM;
 }

 wcss = rproc->priv;
 wcss->dev = &pdev->dev;

 ret = q6v5_wcss_init_mmio(wcss, pdev);
 if (ret)
  goto free_rproc;

 ret = q6v5_alloc_memory_region(wcss);
 if (ret)
  goto free_rproc;

 ret = q6v5_wcss_init_reset(wcss);
 if (ret)
  goto free_rproc;

 ret = qcom_q6v5_init(&wcss->q6v5, pdev, rproc, WCSS_CRASH_REASON, ((void*)0));
 if (ret)
  goto free_rproc;

 ret = rproc_add(rproc);
 if (ret)
  goto free_rproc;

 platform_set_drvdata(pdev, rproc);

 return 0;

free_rproc:
 rproc_free(rproc);

 return ret;
}
