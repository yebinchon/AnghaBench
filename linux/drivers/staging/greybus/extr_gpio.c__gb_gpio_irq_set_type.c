
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct gb_gpio_irq_type_request {void* type; void* which; } ;
struct gb_gpio_controller {int connection; TYPE_1__* gbphy_dev; } ;
struct device {int dummy; } ;
typedef int request ;
struct TYPE_2__ {struct device dev; } ;


 int GB_GPIO_TYPE_IRQ_TYPE ;
 int dev_err (struct device*,char*,int) ;
 int gb_operation_sync (int ,int ,struct gb_gpio_irq_type_request*,int,int *,int ) ;

__attribute__((used)) static void _gb_gpio_irq_set_type(struct gb_gpio_controller *ggc,
      u8 hwirq, u8 type)
{
 struct device *dev = &ggc->gbphy_dev->dev;
 struct gb_gpio_irq_type_request request;
 int ret;

 request.which = hwirq;
 request.type = type;

 ret = gb_operation_sync(ggc->connection,
    GB_GPIO_TYPE_IRQ_TYPE,
    &request, sizeof(request), ((void*)0), 0);
 if (ret)
  dev_err(dev, "failed to set irq type: %d\n", ret);
}
