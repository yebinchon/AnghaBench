
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct zynq_pinctrl {int pctrl; void* nfuncs; void* funcs; void* ngroups; void* groups; int pctrl_offset; int syscon; } ;
struct resource {int start; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 void* ARRAY_SIZE (void*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 struct zynq_pinctrl* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_pinctrl_register (TYPE_1__*,int *,struct zynq_pinctrl*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct zynq_pinctrl*) ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;
 int zynq_desc ;
 void* zynq_pctrl_groups ;
 void* zynq_pmux_functions ;

__attribute__((used)) static int zynq_pinctrl_probe(struct platform_device *pdev)

{
 struct resource *res;
 struct zynq_pinctrl *pctrl;

 pctrl = devm_kzalloc(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
 if (!pctrl)
  return -ENOMEM;

 pctrl->syscon = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
       "syscon");
 if (IS_ERR(pctrl->syscon)) {
  dev_err(&pdev->dev, "unable to get syscon\n");
  return PTR_ERR(pctrl->syscon);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "missing IO resource\n");
  return -ENODEV;
 }
 pctrl->pctrl_offset = res->start;

 pctrl->groups = zynq_pctrl_groups;
 pctrl->ngroups = ARRAY_SIZE(zynq_pctrl_groups);
 pctrl->funcs = zynq_pmux_functions;
 pctrl->nfuncs = ARRAY_SIZE(zynq_pmux_functions);

 pctrl->pctrl = devm_pinctrl_register(&pdev->dev, &zynq_desc, pctrl);
 if (IS_ERR(pctrl->pctrl))
  return PTR_ERR(pctrl->pctrl);

 platform_set_drvdata(pdev, pctrl);

 dev_info(&pdev->dev, "zynq pinctrl initialized\n");

 return 0;
}
