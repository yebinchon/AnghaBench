
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct pinctrl_pin_desc {int * drv_data; int name; int number; } ;
struct cygnus_pinctrl {void* pctl; void* num_functions; TYPE_2__* functions; void* num_groups; TYPE_2__* groups; void* base1; void* base0; int lock; int * dev; } ;
struct TYPE_8__ {int gpio_mux; int name; int pin; } ;
struct TYPE_7__ {unsigned int npins; struct pinctrl_pin_desc* pins; } ;


 void* ARRAY_SIZE (TYPE_2__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int cygnus_mux_log_init (struct cygnus_pinctrl*) ;
 TYPE_2__* cygnus_pin_functions ;
 TYPE_2__* cygnus_pin_groups ;
 TYPE_1__ cygnus_pinctrl_desc ;
 TYPE_2__* cygnus_pins ;
 int dev_err (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 struct pinctrl_pin_desc* devm_kcalloc (int *,unsigned int,int,int ) ;
 struct cygnus_pinctrl* devm_kzalloc (int *,int,int ) ;
 void* devm_pinctrl_register (int *,TYPE_1__*,struct cygnus_pinctrl*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct cygnus_pinctrl*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int cygnus_pinmux_probe(struct platform_device *pdev)
{
 struct cygnus_pinctrl *pinctrl;
 struct resource *res;
 int i, ret;
 struct pinctrl_pin_desc *pins;
 unsigned num_pins = ARRAY_SIZE(cygnus_pins);

 pinctrl = devm_kzalloc(&pdev->dev, sizeof(*pinctrl), GFP_KERNEL);
 if (!pinctrl)
  return -ENOMEM;

 pinctrl->dev = &pdev->dev;
 platform_set_drvdata(pdev, pinctrl);
 spin_lock_init(&pinctrl->lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pinctrl->base0 = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pinctrl->base0)) {
  dev_err(&pdev->dev, "unable to map I/O space\n");
  return PTR_ERR(pinctrl->base0);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 pinctrl->base1 = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pinctrl->base1)) {
  dev_err(&pdev->dev, "unable to map I/O space\n");
  return PTR_ERR(pinctrl->base1);
 }

 ret = cygnus_mux_log_init(pinctrl);
 if (ret) {
  dev_err(&pdev->dev, "unable to initialize IOMUX log\n");
  return ret;
 }

 pins = devm_kcalloc(&pdev->dev, num_pins, sizeof(*pins), GFP_KERNEL);
 if (!pins)
  return -ENOMEM;

 for (i = 0; i < num_pins; i++) {
  pins[i].number = cygnus_pins[i].pin;
  pins[i].name = cygnus_pins[i].name;
  pins[i].drv_data = &cygnus_pins[i].gpio_mux;
 }

 pinctrl->groups = cygnus_pin_groups;
 pinctrl->num_groups = ARRAY_SIZE(cygnus_pin_groups);
 pinctrl->functions = cygnus_pin_functions;
 pinctrl->num_functions = ARRAY_SIZE(cygnus_pin_functions);
 cygnus_pinctrl_desc.pins = pins;
 cygnus_pinctrl_desc.npins = num_pins;

 pinctrl->pctl = devm_pinctrl_register(&pdev->dev, &cygnus_pinctrl_desc,
   pinctrl);
 if (IS_ERR(pinctrl->pctl)) {
  dev_err(&pdev->dev, "unable to register Cygnus IOMUX pinctrl\n");
  return PTR_ERR(pinctrl->pctl);
 }

 return 0;
}
