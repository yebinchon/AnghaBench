
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct power_supply_config {TYPE_1__* drv_data; } ;
struct platform_device {int dev; } ;
struct TYPE_6__ {void* psy; int work_lock; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int INIT_WORK (int *,int ) ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int TOSA_GPIO_BAT0_CRG ;
 int TOSA_GPIO_BAT1_CRG ;
 int TOSA_GPIO_JACKET_DETECT ;
 int bat_work ;
 int cancel_work_sync (int *) ;
 int free_irq (int ,TYPE_1__*) ;
 int gpio_free_array (int ,int ) ;
 int gpio_request_array (int ,int ) ;
 int gpio_to_irq (int ) ;
 int machine_is_tosa () ;
 int mutex_init (int *) ;
 void* power_supply_register (int *,int *,struct power_supply_config*) ;
 int power_supply_unregister (void*) ;
 int request_irq (int ,int ,int,char*,TYPE_1__*) ;
 int schedule_work (int *) ;
 TYPE_1__ tosa_bat_bu ;
 int tosa_bat_bu_desc ;
 int tosa_bat_gpio_isr ;
 int tosa_bat_gpios ;
 TYPE_1__ tosa_bat_jacket ;
 int tosa_bat_jacket_desc ;
 TYPE_1__ tosa_bat_main ;
 int tosa_bat_main_desc ;
 int tosa_bat_work ;

__attribute__((used)) static int tosa_bat_probe(struct platform_device *dev)
{
 int ret;
 struct power_supply_config main_psy_cfg = {},
       jacket_psy_cfg = {},
       bu_psy_cfg = {};

 if (!machine_is_tosa())
  return -ENODEV;

 ret = gpio_request_array(tosa_bat_gpios, ARRAY_SIZE(tosa_bat_gpios));
 if (ret)
  return ret;

 mutex_init(&tosa_bat_main.work_lock);
 mutex_init(&tosa_bat_jacket.work_lock);

 INIT_WORK(&bat_work, tosa_bat_work);

 main_psy_cfg.drv_data = &tosa_bat_main;
 tosa_bat_main.psy = power_supply_register(&dev->dev,
        &tosa_bat_main_desc,
        &main_psy_cfg);
 if (IS_ERR(tosa_bat_main.psy)) {
  ret = PTR_ERR(tosa_bat_main.psy);
  goto err_psy_reg_main;
 }

 jacket_psy_cfg.drv_data = &tosa_bat_jacket;
 tosa_bat_jacket.psy = power_supply_register(&dev->dev,
          &tosa_bat_jacket_desc,
          &jacket_psy_cfg);
 if (IS_ERR(tosa_bat_jacket.psy)) {
  ret = PTR_ERR(tosa_bat_jacket.psy);
  goto err_psy_reg_jacket;
 }

 bu_psy_cfg.drv_data = &tosa_bat_bu;
 tosa_bat_bu.psy = power_supply_register(&dev->dev, &tosa_bat_bu_desc,
      &bu_psy_cfg);
 if (IS_ERR(tosa_bat_bu.psy)) {
  ret = PTR_ERR(tosa_bat_bu.psy);
  goto err_psy_reg_bu;
 }

 ret = request_irq(gpio_to_irq(TOSA_GPIO_BAT0_CRG),
    tosa_bat_gpio_isr,
    IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
    "main full", &tosa_bat_main);
 if (ret)
  goto err_req_main;

 ret = request_irq(gpio_to_irq(TOSA_GPIO_BAT1_CRG),
    tosa_bat_gpio_isr,
    IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
    "jacket full", &tosa_bat_jacket);
 if (ret)
  goto err_req_jacket;

 ret = request_irq(gpio_to_irq(TOSA_GPIO_JACKET_DETECT),
    tosa_bat_gpio_isr,
    IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
    "jacket detect", &tosa_bat_jacket);
 if (!ret) {
  schedule_work(&bat_work);
  return 0;
 }

 free_irq(gpio_to_irq(TOSA_GPIO_BAT1_CRG), &tosa_bat_jacket);
err_req_jacket:
 free_irq(gpio_to_irq(TOSA_GPIO_BAT0_CRG), &tosa_bat_main);
err_req_main:
 power_supply_unregister(tosa_bat_bu.psy);
err_psy_reg_bu:
 power_supply_unregister(tosa_bat_jacket.psy);
err_psy_reg_jacket:
 power_supply_unregister(tosa_bat_main.psy);
err_psy_reg_main:


 cancel_work_sync(&bat_work);

 gpio_free_array(tosa_bat_gpios, ARRAY_SIZE(tosa_bat_gpios));
 return ret;
}
