
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_bandgap {int tshut_gpio; int dev; } ;
struct platform_device {int dummy; } ;


 int IRQF_TRIGGER_RISING ;
 int dev_err (int ,char*,...) ;
 int gpio_direction_input (int) ;
 int gpio_free (int) ;
 int gpio_request (int,char*) ;
 int gpio_to_irq (int) ;
 int request_irq (int ,int ,int ,char*,int *) ;
 int ti_bandgap_tshut_irq_handler ;

__attribute__((used)) static int ti_bandgap_tshut_init(struct ti_bandgap *bgp,
     struct platform_device *pdev)
{
 int gpio_nr = bgp->tshut_gpio;
 int status;


 status = gpio_request(gpio_nr, "tshut");
 if (status < 0) {
  dev_err(bgp->dev, "Could not request for TSHUT GPIO:%i\n", 86);
  return status;
 }
 status = gpio_direction_input(gpio_nr);
 if (status) {
  dev_err(bgp->dev, "Cannot set input TSHUT GPIO %d\n", gpio_nr);
  return status;
 }

 status = request_irq(gpio_to_irq(gpio_nr), ti_bandgap_tshut_irq_handler,
        IRQF_TRIGGER_RISING, "tshut", ((void*)0));
 if (status) {
  gpio_free(gpio_nr);
  dev_err(bgp->dev, "request irq failed for TSHUT");
 }

 return 0;
}
