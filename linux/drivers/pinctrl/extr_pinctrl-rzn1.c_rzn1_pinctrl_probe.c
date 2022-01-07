
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct rzn1_pinctrl {int* mdio_func; void* clk; int pctl; int * dev; void* lev2; void* lev2_protect_phys; void* lev1; void* lev1_protect_phys; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {int npins; int pins; int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_name (int *) ;
 void* devm_clk_get (int *,int *) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 struct rzn1_pinctrl* devm_kzalloc (int *,int,int ) ;
 int devm_pinctrl_register_and_init (int *,TYPE_1__*,struct rzn1_pinctrl*,int *) ;
 int pinctrl_enable (int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct rzn1_pinctrl*) ;
 TYPE_1__ rzn1_pinctrl_desc ;
 int rzn1_pinctrl_probe_dt (struct platform_device*,struct rzn1_pinctrl*) ;
 int rzn1_pins ;

__attribute__((used)) static int rzn1_pinctrl_probe(struct platform_device *pdev)
{
 struct rzn1_pinctrl *ipctl;
 struct resource *res;
 int ret;


 ipctl = devm_kzalloc(&pdev->dev, sizeof(*ipctl), GFP_KERNEL);
 if (!ipctl)
  return -ENOMEM;

 ipctl->mdio_func[0] = -1;
 ipctl->mdio_func[1] = -1;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ipctl->lev1_protect_phys = (u32)res->start + 0x400;
 ipctl->lev1 = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ipctl->lev1))
  return PTR_ERR(ipctl->lev1);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 ipctl->lev2_protect_phys = (u32)res->start + 0x400;
 ipctl->lev2 = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ipctl->lev2))
  return PTR_ERR(ipctl->lev2);

 ipctl->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(ipctl->clk))
  return PTR_ERR(ipctl->clk);
 ret = clk_prepare_enable(ipctl->clk);
 if (ret)
  return ret;

 ipctl->dev = &pdev->dev;
 rzn1_pinctrl_desc.name = dev_name(&pdev->dev);
 rzn1_pinctrl_desc.pins = rzn1_pins;
 rzn1_pinctrl_desc.npins = ARRAY_SIZE(rzn1_pins);

 ret = rzn1_pinctrl_probe_dt(pdev, ipctl);
 if (ret) {
  dev_err(&pdev->dev, "fail to probe dt properties\n");
  goto err_clk;
 }

 platform_set_drvdata(pdev, ipctl);

 ret = devm_pinctrl_register_and_init(&pdev->dev, &rzn1_pinctrl_desc,
          ipctl, &ipctl->pctl);
 if (ret) {
  dev_err(&pdev->dev, "could not register rzn1 pinctrl driver\n");
  goto err_clk;
 }

 ret = pinctrl_enable(ipctl->pctl);
 if (ret)
  goto err_clk;

 dev_info(&pdev->dev, "probed\n");

 return 0;

err_clk:
 clk_disable_unprepare(ipctl->clk);

 return ret;
}
