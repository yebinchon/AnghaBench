
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct m48t35_priv {int rtc; int lock; int reg; int size; int baseaddr; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int PTR_ERR_OR_ZERO (int ) ;
 int THIS_MODULE ;
 int devm_ioremap (int *,int ,int ) ;
 struct m48t35_priv* devm_kzalloc (int *,int,int ) ;
 int devm_request_mem_region (int *,int ,int ,int ) ;
 int devm_rtc_device_register (int *,char*,int *,int ) ;
 int m48t35_ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct m48t35_priv*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int m48t35_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct m48t35_priv *priv;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;
 priv = devm_kzalloc(&pdev->dev, sizeof(struct m48t35_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->size = resource_size(res);





 if (!devm_request_mem_region(&pdev->dev, res->start, priv->size,
         pdev->name))
  return -EBUSY;

 priv->baseaddr = res->start;
 priv->reg = devm_ioremap(&pdev->dev, priv->baseaddr, priv->size);
 if (!priv->reg)
  return -ENOMEM;

 spin_lock_init(&priv->lock);

 platform_set_drvdata(pdev, priv);

 priv->rtc = devm_rtc_device_register(&pdev->dev, "m48t35",
      &m48t35_ops, THIS_MODULE);
 return PTR_ERR_OR_ZERO(priv->rtc);
}
