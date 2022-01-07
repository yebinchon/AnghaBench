
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pinctrl_pin_desc {int number; char* name; } ;
struct pinctrl_desc {struct pinctrl_pin_desc* pins; int npins; int * pmxops; int * pctlops; int owner; int name; } ;
struct dc_pinmap {char** pin_names; int pctl; TYPE_1__* dev; struct pinctrl_desc* desc; int regs; } ;


 int DRIVER_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PINS_COUNT ;
 int PINS_PER_COLLECTION ;
 int PIN_COLLECTIONS ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dc_gpiochip_add (struct dc_pinmap*,int ) ;
 int dc_pinctrl_ops ;
 int dc_pmxops ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 void* devm_kcalloc (TYPE_1__*,int ,int,int ) ;
 void* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_pinctrl_register (TYPE_1__*,struct pinctrl_desc*,struct dc_pinmap*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int snprintf (char*,int,char*,char,int) ;
 int strlen (char*) ;

__attribute__((used)) static int dc_pinctrl_probe(struct platform_device *pdev)
{
 struct dc_pinmap *pmap;
 struct resource *r;
 struct pinctrl_pin_desc *pins;
 struct pinctrl_desc *pctl_desc;
 char *pin_names;
 int name_len = strlen("GP_xx") + 1;
 int i, j;

 pmap = devm_kzalloc(&pdev->dev, sizeof(*pmap), GFP_KERNEL);
 if (!pmap)
  return -ENOMEM;

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pmap->regs = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(pmap->regs))
  return PTR_ERR(pmap->regs);

 pins = devm_kcalloc(&pdev->dev, PINS_COUNT, sizeof(*pins),
       GFP_KERNEL);
 if (!pins)
  return -ENOMEM;
 pin_names = devm_kcalloc(&pdev->dev, PINS_COUNT, name_len,
     GFP_KERNEL);
 if (!pin_names)
  return -ENOMEM;

 for (i = 0; i < PIN_COLLECTIONS; i++) {
  for (j = 0; j < PINS_PER_COLLECTION; j++) {
   int pin_id = i*PINS_PER_COLLECTION + j;
   char *name = &pin_names[pin_id * name_len];

   snprintf(name, name_len, "GP_%c%c", 'A'+i, '0'+j);

   pins[pin_id].number = pin_id;
   pins[pin_id].name = name;
   pmap->pin_names[pin_id] = name;
  }
 }

 pctl_desc = devm_kzalloc(&pdev->dev, sizeof(*pctl_desc), GFP_KERNEL);
 if (!pctl_desc)
  return -ENOMEM;

 pctl_desc->name = DRIVER_NAME,
 pctl_desc->owner = THIS_MODULE,
 pctl_desc->pctlops = &dc_pinctrl_ops,
 pctl_desc->pmxops = &dc_pmxops,
 pctl_desc->npins = PINS_COUNT;
 pctl_desc->pins = pins;
 pmap->desc = pctl_desc;

 pmap->dev = &pdev->dev;

 pmap->pctl = devm_pinctrl_register(&pdev->dev, pctl_desc, pmap);
 if (IS_ERR(pmap->pctl)) {
  dev_err(&pdev->dev, "pinctrl driver registration failed\n");
  return PTR_ERR(pmap->pctl);
 }

 return dc_gpiochip_add(pmap, pdev->dev.of_node);
}
