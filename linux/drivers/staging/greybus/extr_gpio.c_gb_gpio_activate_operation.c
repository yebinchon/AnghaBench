
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct gbphy_device {int dummy; } ;
struct gb_gpio_controller {TYPE_1__* lines; int connection; struct gbphy_device* gbphy_dev; } ;
struct gb_gpio_activate_request {size_t which; } ;
typedef int request ;
struct TYPE_2__ {int active; } ;


 int GB_GPIO_TYPE_ACTIVATE ;
 int gb_operation_sync (int ,int ,struct gb_gpio_activate_request*,int,int *,int ) ;
 int gbphy_runtime_get_sync (struct gbphy_device*) ;
 int gbphy_runtime_put_autosuspend (struct gbphy_device*) ;

__attribute__((used)) static int gb_gpio_activate_operation(struct gb_gpio_controller *ggc, u8 which)
{
 struct gb_gpio_activate_request request;
 struct gbphy_device *gbphy_dev = ggc->gbphy_dev;
 int ret;

 ret = gbphy_runtime_get_sync(gbphy_dev);
 if (ret)
  return ret;

 request.which = which;
 ret = gb_operation_sync(ggc->connection, GB_GPIO_TYPE_ACTIVATE,
    &request, sizeof(request), ((void*)0), 0);
 if (ret) {
  gbphy_runtime_put_autosuspend(gbphy_dev);
  return ret;
 }

 ggc->lines[which].active = 1;

 return 0;
}
