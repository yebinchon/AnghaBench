
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {int name; struct device dev; } ;
struct intel_soc_pmic {int regmap; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {char* phys; TYPE_2__ dev; TYPE_1__ id; int name; } ;


 int BCOVE_LVL1_PWRBTN ;
 int BCOVE_MIRQLVL1 ;
 int BCOVE_MPBIRQ ;
 int BCOVE_PBIRQ_PBTN ;
 int BUS_HOST ;
 int ENOMEM ;
 int EV_KEY ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int KEY_POWER ;
 struct intel_soc_pmic* dev_get_drvdata (int ) ;
 int dev_pm_set_wake_irq (struct device*,int) ;
 int dev_set_drvdata (struct device*,int ) ;
 int device_init_wakeup (struct device*,int) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,int ,struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int mrfld_pwrbtn_interrupt ;
 int platform_get_irq (struct platform_device*,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int mrfld_pwrbtn_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct intel_soc_pmic *pmic = dev_get_drvdata(dev->parent);
 struct input_dev *input;
 int irq, ret;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 input = devm_input_allocate_device(dev);
 if (!input)
  return -ENOMEM;
 input->name = pdev->name;
 input->phys = "power-button/input0";
 input->id.bustype = BUS_HOST;
 input->dev.parent = dev;
 input_set_capability(input, EV_KEY, KEY_POWER);
 ret = input_register_device(input);
 if (ret)
  return ret;

 dev_set_drvdata(dev, pmic->regmap);

 ret = devm_request_threaded_irq(dev, irq, ((void*)0), mrfld_pwrbtn_interrupt,
     IRQF_ONESHOT | IRQF_SHARED, pdev->name,
     input);
 if (ret)
  return ret;

 regmap_update_bits(pmic->regmap, BCOVE_MIRQLVL1, BCOVE_LVL1_PWRBTN, 0);
 regmap_update_bits(pmic->regmap, BCOVE_MPBIRQ, BCOVE_PBIRQ_PBTN, 0);

 device_init_wakeup(dev, 1);
 dev_pm_set_wake_irq(dev, irq);
 return 0;
}
