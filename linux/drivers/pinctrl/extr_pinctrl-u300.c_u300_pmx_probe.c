
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u300_pmx {int pctl; int virtbase; int * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct u300_pmx* devm_kzalloc (int *,int,int ) ;
 int devm_pinctrl_register (int *,int *,struct u300_pmx*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct u300_pmx*) ;
 int u300_pmx_desc ;

__attribute__((used)) static int u300_pmx_probe(struct platform_device *pdev)
{
 struct u300_pmx *upmx;
 struct resource *res;


 upmx = devm_kzalloc(&pdev->dev, sizeof(*upmx), GFP_KERNEL);
 if (!upmx)
  return -ENOMEM;

 upmx->dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 upmx->virtbase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(upmx->virtbase))
  return PTR_ERR(upmx->virtbase);

 upmx->pctl = devm_pinctrl_register(&pdev->dev, &u300_pmx_desc, upmx);
 if (IS_ERR(upmx->pctl)) {
  dev_err(&pdev->dev, "could not register U300 pinmux driver\n");
  return PTR_ERR(upmx->pctl);
 }

 platform_set_drvdata(pdev, upmx);

 dev_info(&pdev->dev, "initialized U300 pin control driver\n");

 return 0;
}
