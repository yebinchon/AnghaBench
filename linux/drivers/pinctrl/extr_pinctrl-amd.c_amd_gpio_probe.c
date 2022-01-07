
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_16__ {int of_node; } ;
struct platform_device {TYPE_5__ dev; int name; } ;
struct TYPE_15__ {int base; int ngpio; int of_node; TYPE_5__* parent; int owner; int label; int dbg_show; int set_config; int set; int get; int direction_output; int direction_input; int get_direction; } ;
struct amd_gpio {int hwbank_num; TYPE_1__ gc; int pctrl; int ngroups; int groups; struct platform_device* pdev; int saved_regs; int base; int lock; } ;
struct TYPE_17__ {int name; int npins; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (int ) ;
 int KBUILD_MODNAME ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int amd_gpio_dbg_show ;
 int amd_gpio_direction_input ;
 int amd_gpio_direction_output ;
 int amd_gpio_get_direction ;
 int amd_gpio_get_value ;
 int amd_gpio_irq_handler ;
 int amd_gpio_irqchip ;
 int amd_gpio_set_config ;
 int amd_gpio_set_value ;
 TYPE_7__ amd_pinctrl_desc ;
 int dev_dbg (TYPE_5__*,char*) ;
 int dev_err (TYPE_5__*,char*) ;
 int dev_name (TYPE_5__*) ;
 int devm_ioremap_nocache (TYPE_5__*,int ,int) ;
 int devm_kcalloc (TYPE_5__*,int ,int,int ) ;
 struct amd_gpio* devm_kzalloc (TYPE_5__*,int,int ) ;
 int devm_pinctrl_register (TYPE_5__*,TYPE_7__*,struct amd_gpio*) ;
 int devm_request_irq (TYPE_5__*,int,int ,int ,int ,struct amd_gpio*) ;
 int gpiochip_add_data (TYPE_1__*,struct amd_gpio*) ;
 int gpiochip_add_pin_range (TYPE_1__*,int ,int ,int ,int) ;
 int gpiochip_irqchip_add (TYPE_1__*,int *,int ,int ,int ) ;
 int gpiochip_remove (TYPE_1__*) ;
 int handle_simple_irq ;
 int kerncz_groups ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct amd_gpio*) ;
 int raw_spin_lock_init (int *) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int amd_gpio_probe(struct platform_device *pdev)
{
 int ret = 0;
 int irq_base;
 struct resource *res;
 struct amd_gpio *gpio_dev;

 gpio_dev = devm_kzalloc(&pdev->dev,
    sizeof(struct amd_gpio), GFP_KERNEL);
 if (!gpio_dev)
  return -ENOMEM;

 raw_spin_lock_init(&gpio_dev->lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "Failed to get gpio io resource.\n");
  return -EINVAL;
 }

 gpio_dev->base = devm_ioremap_nocache(&pdev->dev, res->start,
      resource_size(res));
 if (!gpio_dev->base)
  return -ENOMEM;

 irq_base = platform_get_irq(pdev, 0);
 if (irq_base < 0)
  return irq_base;
 gpio_dev->pdev = pdev;
 gpio_dev->gc.get_direction = amd_gpio_get_direction;
 gpio_dev->gc.direction_input = amd_gpio_direction_input;
 gpio_dev->gc.direction_output = amd_gpio_direction_output;
 gpio_dev->gc.get = amd_gpio_get_value;
 gpio_dev->gc.set = amd_gpio_set_value;
 gpio_dev->gc.set_config = amd_gpio_set_config;
 gpio_dev->gc.dbg_show = amd_gpio_dbg_show;

 gpio_dev->gc.base = -1;
 gpio_dev->gc.label = pdev->name;
 gpio_dev->gc.owner = THIS_MODULE;
 gpio_dev->gc.parent = &pdev->dev;
 gpio_dev->gc.ngpio = resource_size(res) / 4;




 gpio_dev->hwbank_num = gpio_dev->gc.ngpio / 64;
 gpio_dev->groups = kerncz_groups;
 gpio_dev->ngroups = ARRAY_SIZE(kerncz_groups);

 amd_pinctrl_desc.name = dev_name(&pdev->dev);
 gpio_dev->pctrl = devm_pinctrl_register(&pdev->dev, &amd_pinctrl_desc,
      gpio_dev);
 if (IS_ERR(gpio_dev->pctrl)) {
  dev_err(&pdev->dev, "Couldn't register pinctrl driver\n");
  return PTR_ERR(gpio_dev->pctrl);
 }

 ret = gpiochip_add_data(&gpio_dev->gc, gpio_dev);
 if (ret)
  return ret;

 ret = gpiochip_add_pin_range(&gpio_dev->gc, dev_name(&pdev->dev),
    0, 0, gpio_dev->gc.ngpio);
 if (ret) {
  dev_err(&pdev->dev, "Failed to add pin range\n");
  goto out2;
 }

 ret = gpiochip_irqchip_add(&gpio_dev->gc,
    &amd_gpio_irqchip,
    0,
    handle_simple_irq,
    IRQ_TYPE_NONE);
 if (ret) {
  dev_err(&pdev->dev, "could not add irqchip\n");
  ret = -ENODEV;
  goto out2;
 }

 ret = devm_request_irq(&pdev->dev, irq_base, amd_gpio_irq_handler,
          IRQF_SHARED, KBUILD_MODNAME, gpio_dev);
 if (ret)
  goto out2;

 platform_set_drvdata(pdev, gpio_dev);

 dev_dbg(&pdev->dev, "amd gpio driver loaded\n");
 return ret;

out2:
 gpiochip_remove(&gpio_dev->gc);

 return ret;
}
