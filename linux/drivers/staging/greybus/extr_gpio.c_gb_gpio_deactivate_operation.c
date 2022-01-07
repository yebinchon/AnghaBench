
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct device {int dummy; } ;
struct gbphy_device {struct device dev; } ;
struct gb_gpio_deactivate_request {size_t which; } ;
struct gb_gpio_controller {TYPE_1__* lines; int connection; struct gbphy_device* gbphy_dev; } ;
typedef int request ;
struct TYPE_2__ {int active; } ;


 int GB_GPIO_TYPE_DEACTIVATE ;
 int dev_err (struct device*,char*,size_t) ;
 int gb_operation_sync (int ,int ,struct gb_gpio_deactivate_request*,int,int *,int ) ;
 int gbphy_runtime_put_autosuspend (struct gbphy_device*) ;

__attribute__((used)) static void gb_gpio_deactivate_operation(struct gb_gpio_controller *ggc,
      u8 which)
{
 struct gbphy_device *gbphy_dev = ggc->gbphy_dev;
 struct device *dev = &gbphy_dev->dev;
 struct gb_gpio_deactivate_request request;
 int ret;

 request.which = which;
 ret = gb_operation_sync(ggc->connection, GB_GPIO_TYPE_DEACTIVATE,
    &request, sizeof(request), ((void*)0), 0);
 if (ret) {
  dev_err(dev, "failed to deactivate gpio %u\n", which);
  goto out_pm_put;
 }

 ggc->lines[which].active = 0;

out_pm_put:
 gbphy_runtime_put_autosuspend(gbphy_dev);
}
