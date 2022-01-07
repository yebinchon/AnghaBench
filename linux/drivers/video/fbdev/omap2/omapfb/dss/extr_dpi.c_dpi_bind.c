
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dpi_data {int lock; struct platform_device* pdev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (int *,struct dpi_data*) ;
 struct dpi_data* devm_kzalloc (int *,int,int ) ;
 int dpi_init_output (struct platform_device*) ;
 int mutex_init (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int dpi_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct dpi_data *dpi;

 dpi = devm_kzalloc(&pdev->dev, sizeof(*dpi), GFP_KERNEL);
 if (!dpi)
  return -ENOMEM;

 dpi->pdev = pdev;

 dev_set_drvdata(&pdev->dev, dpi);

 mutex_init(&dpi->lock);

 dpi_init_output(pdev);

 return 0;
}
