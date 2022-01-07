
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_gpio_device_data {int irq; scalar_t__ echo_pin; int echo_timer; int pps; } ;
struct platform_device {int dev; } ;


 int del_timer_sync (int *) ;
 int dev_info (int *,char*,int ) ;
 int gpiod_set_value (scalar_t__,int ) ;
 struct pps_gpio_device_data* platform_get_drvdata (struct platform_device*) ;
 int pps_unregister_source (int ) ;

__attribute__((used)) static int pps_gpio_remove(struct platform_device *pdev)
{
 struct pps_gpio_device_data *data = platform_get_drvdata(pdev);

 pps_unregister_source(data->pps);
 if (data->echo_pin) {
  del_timer_sync(&data->echo_timer);

  gpiod_set_value(data->echo_pin, 0);
 }
 dev_info(&pdev->dev, "removed IRQ %d as PPS source\n", data->irq);
 return 0;
}
