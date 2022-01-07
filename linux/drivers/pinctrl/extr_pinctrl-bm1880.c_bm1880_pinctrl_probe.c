
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct bm1880_pinctrl {int pctrldev; int pinconf; void* nfuncs; void* funcs; void* ngroups; void* groups; int base; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int bm1880_desc ;
 void* bm1880_pctrl_groups ;
 int bm1880_pinconf ;
 void* bm1880_pmux_functions ;
 int dev_info (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct bm1880_pinctrl* devm_kzalloc (int *,int,int ) ;
 int devm_pinctrl_register (int *,int *,struct bm1880_pinctrl*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct bm1880_pinctrl*) ;

__attribute__((used)) static int bm1880_pinctrl_probe(struct platform_device *pdev)

{
 struct resource *res;
 struct bm1880_pinctrl *pctrl;

 pctrl = devm_kzalloc(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
 if (!pctrl)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pctrl->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pctrl->base))
  return PTR_ERR(pctrl->base);

 pctrl->groups = bm1880_pctrl_groups;
 pctrl->ngroups = ARRAY_SIZE(bm1880_pctrl_groups);
 pctrl->funcs = bm1880_pmux_functions;
 pctrl->nfuncs = ARRAY_SIZE(bm1880_pmux_functions);
 pctrl->pinconf = bm1880_pinconf;

 pctrl->pctrldev = devm_pinctrl_register(&pdev->dev, &bm1880_desc,
      pctrl);
 if (IS_ERR(pctrl->pctrldev))
  return PTR_ERR(pctrl->pctrldev);

 platform_set_drvdata(pdev, pctrl);

 dev_info(&pdev->dev, "BM1880 pinctrl driver initialized\n");

 return 0;
}
