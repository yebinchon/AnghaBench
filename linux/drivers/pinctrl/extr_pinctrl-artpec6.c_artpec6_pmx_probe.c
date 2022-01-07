
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct artpec6_pmx {int pctl; void* num_pin_groups; void* pin_groups; void* num_functions; void* functions; void* num_pins; void* pins; int base; int * dev; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int artpec6_desc ;
 void* artpec6_pin_groups ;
 void* artpec6_pins ;
 void* artpec6_pmx_functions ;
 int artpec6_pmx_reset (struct artpec6_pmx*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct artpec6_pmx* devm_kzalloc (int *,int,int ) ;
 int pinctrl_register (int *,int *,struct artpec6_pmx*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct artpec6_pmx*) ;

__attribute__((used)) static int artpec6_pmx_probe(struct platform_device *pdev)
{
 struct artpec6_pmx *pmx;
 struct resource *res;

 pmx = devm_kzalloc(&pdev->dev, sizeof(*pmx), GFP_KERNEL);
 if (!pmx)
  return -ENOMEM;

 pmx->dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pmx->base = devm_ioremap_resource(&pdev->dev, res);

 if (IS_ERR(pmx->base))
  return PTR_ERR(pmx->base);

 artpec6_pmx_reset(pmx);

 pmx->pins = artpec6_pins;
 pmx->num_pins = ARRAY_SIZE(artpec6_pins);
 pmx->functions = artpec6_pmx_functions;
 pmx->num_functions = ARRAY_SIZE(artpec6_pmx_functions);
 pmx->pin_groups = artpec6_pin_groups;
 pmx->num_pin_groups = ARRAY_SIZE(artpec6_pin_groups);
 pmx->pctl = pinctrl_register(&artpec6_desc, &pdev->dev, pmx);

 if (IS_ERR(pmx->pctl)) {
  dev_err(&pdev->dev, "could not register pinctrl driver\n");
  return PTR_ERR(pmx->pctl);
 }

 platform_set_drvdata(pdev, pmx);

 dev_info(&pdev->dev, "initialised Axis ARTPEC-6 pinctrl driver\n");

 return 0;
}
