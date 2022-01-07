
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_21__ {int of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct pinctrl_xway_soc {int pin_count; int num_exin; int exin; int num_funcs; int funcs; int num_grps; int grps; int mfp; } ;
struct pinctrl_pin_desc {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_22__ {char* name; scalar_t__ number; } ;
struct TYPE_20__ {int ngpio; int base; int of_node; int owner; TYPE_6__* parent; } ;
struct TYPE_19__ {int npins; int base; } ;
struct TYPE_18__ {int num_pads; int num_mfp; int pctrl; int num_exin; int exin; int num_funcs; int funcs; int num_grps; int grps; int mfp; TYPE_8__* pads; int * membase; } ;
struct TYPE_17__ {int npins; int name; TYPE_8__* pins; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GPIO0 ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 struct pinctrl_xway_soc danube_pinctrl ;
 int dev_err (TYPE_6__*,char*) ;
 int dev_info (TYPE_6__*,char*) ;
 int dev_name (TYPE_6__*) ;
 int devm_gpiochip_add_data (TYPE_6__*,TYPE_4__*,int *) ;
 int devm_ioremap_resource (TYPE_6__*,struct resource*) ;
 char* devm_kasprintf (TYPE_6__*,int ,char*,int) ;
 TYPE_8__* devm_kcalloc (TYPE_6__*,int,int,int ) ;
 int ltq_pinctrl_register (struct platform_device*,TYPE_2__*) ;
 struct of_device_id* of_match_device (int ,TYPE_6__*) ;
 int of_property_read_bool (int ,char*) ;
 int pinctrl_add_gpio_range (int ,TYPE_3__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 TYPE_4__ xway_chip ;
 TYPE_3__ xway_gpio_range ;
 TYPE_2__ xway_info ;
 int xway_match ;
 TYPE_1__ xway_pctrl_desc ;

__attribute__((used)) static int pinmux_xway_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 const struct pinctrl_xway_soc *xway_soc;
 struct resource *res;
 int ret, i;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 xway_info.membase[0] = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(xway_info.membase[0]))
  return PTR_ERR(xway_info.membase[0]);

 match = of_match_device(xway_match, &pdev->dev);
 if (match)
  xway_soc = (const struct pinctrl_xway_soc *) match->data;
 else
  xway_soc = &danube_pinctrl;


 xway_chip.ngpio = xway_soc->pin_count;


 xway_info.pads = devm_kcalloc(&pdev->dev,
   xway_chip.ngpio, sizeof(struct pinctrl_pin_desc),
   GFP_KERNEL);
 if (!xway_info.pads)
  return -ENOMEM;

 for (i = 0; i < xway_chip.ngpio; i++) {
  char *name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "io%d", i);

  if (!name)
   return -ENOMEM;

  xway_info.pads[i].number = GPIO0 + i;
  xway_info.pads[i].name = name;
 }
 xway_pctrl_desc.pins = xway_info.pads;


 xway_pctrl_desc.name = dev_name(&pdev->dev);
 xway_pctrl_desc.npins = xway_chip.ngpio;

 xway_info.num_pads = xway_chip.ngpio;
 xway_info.num_mfp = xway_chip.ngpio;
 xway_info.mfp = xway_soc->mfp;
 xway_info.grps = xway_soc->grps;
 xway_info.num_grps = xway_soc->num_grps;
 xway_info.funcs = xway_soc->funcs;
 xway_info.num_funcs = xway_soc->num_funcs;
 xway_info.exin = xway_soc->exin;
 xway_info.num_exin = xway_soc->num_exin;


 ret = ltq_pinctrl_register(pdev, &xway_info);
 if (ret) {
  dev_err(&pdev->dev, "Failed to register pinctrl driver\n");
  return ret;
 }


 xway_chip.parent = &pdev->dev;
 xway_chip.owner = THIS_MODULE;
 xway_chip.of_node = pdev->dev.of_node;
 ret = devm_gpiochip_add_data(&pdev->dev, &xway_chip, ((void*)0));
 if (ret) {
  dev_err(&pdev->dev, "Failed to register gpio chip\n");
  return ret;
 }
 if (!of_property_read_bool(pdev->dev.of_node, "gpio-ranges")) {

  xway_gpio_range.npins = xway_chip.ngpio;
  xway_gpio_range.base = xway_chip.base;
  pinctrl_add_gpio_range(xway_info.pctrl, &xway_gpio_range);
 }

 dev_info(&pdev->dev, "Init done\n");
 return 0;
}
