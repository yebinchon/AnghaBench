
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {int name; struct device dev; } ;
struct intel_soc_pmic {int regmap; } ;
struct TYPE_2__ {int bustype; } ;
struct input_dev {char* phys; TYPE_1__ id; int name; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int EV_KEY ;
 int KBUILD_MODNAME ;
 int KEY_POWER ;
 int chtdc_ti_pwrbtn_interrupt ;
 struct intel_soc_pmic* dev_get_drvdata (int ) ;
 int dev_pm_set_wake_irq (struct device*,int) ;
 int dev_set_drvdata (struct device*,int ) ;
 int device_init_wakeup (struct device*,int) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int ,int ,struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int chtdc_ti_pwrbtn_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct intel_soc_pmic *pmic = dev_get_drvdata(dev->parent);
 struct input_dev *input;
 int irq, err;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;
 input = devm_input_allocate_device(dev);
 if (!input)
  return -ENOMEM;
 input->name = pdev->name;
 input->phys = "power-button/input0";
 input->id.bustype = BUS_HOST;
 input_set_capability(input, EV_KEY, KEY_POWER);
 err = input_register_device(input);
 if (err)
  return err;

 dev_set_drvdata(dev, pmic->regmap);

 err = devm_request_threaded_irq(dev, irq, ((void*)0),
     chtdc_ti_pwrbtn_interrupt,
     0, KBUILD_MODNAME, input);
 if (err)
  return err;

 device_init_wakeup(dev, 1);
 dev_pm_set_wake_irq(dev, irq);
 return 0;
}
