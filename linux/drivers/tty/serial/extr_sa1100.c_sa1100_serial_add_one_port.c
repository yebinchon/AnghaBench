
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dev; } ;
struct sa1100_port {TYPE_1__ port; int * gpios; } ;
struct platform_device {int dev; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (int *,char*,int) ;
 int * mctrl_gpio_init_noauto (int *,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sa1100_port*) ;
 int sa1100_reg ;
 int uart_add_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int sa1100_serial_add_one_port(struct sa1100_port *sport, struct platform_device *dev)
{
 sport->port.dev = &dev->dev;




 sport->gpios = mctrl_gpio_init_noauto(sport->port.dev, 0);
 if (IS_ERR(sport->gpios)) {
  int err = PTR_ERR(sport->gpios);

  dev_err(sport->port.dev, "failed to get mctrl gpios: %d\n",
   err);

  if (err == -EPROBE_DEFER)
   return err;

  sport->gpios = ((void*)0);
 }

 platform_set_drvdata(dev, sport);

 return uart_add_one_port(&sa1100_reg, &sport->port);
}
