
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct gb_gpio_set_value_request {size_t which; int value; } ;
struct gb_gpio_controller {TYPE_2__* lines; int connection; TYPE_1__* gbphy_dev; } ;
struct device {int dummy; } ;
typedef int request ;
struct TYPE_4__ {int direction; int value; } ;
struct TYPE_3__ {struct device dev; } ;


 int GB_GPIO_TYPE_SET_VALUE ;
 int dev_err (struct device*,char*,size_t) ;
 int dev_warn (struct device*,char*,size_t) ;
 int gb_operation_sync (int ,int ,struct gb_gpio_set_value_request*,int,int *,int ) ;

__attribute__((used)) static void gb_gpio_set_value_operation(struct gb_gpio_controller *ggc,
     u8 which, bool value_high)
{
 struct device *dev = &ggc->gbphy_dev->dev;
 struct gb_gpio_set_value_request request;
 int ret;

 if (ggc->lines[which].direction == 1) {
  dev_warn(dev, "refusing to set value of input gpio %u\n",
    which);
  return;
 }

 request.which = which;
 request.value = value_high ? 1 : 0;
 ret = gb_operation_sync(ggc->connection, GB_GPIO_TYPE_SET_VALUE,
    &request, sizeof(request), ((void*)0), 0);
 if (ret) {
  dev_err(dev, "failed to set value of gpio %u\n", which);
  return;
 }

 ggc->lines[which].value = request.value;
}
