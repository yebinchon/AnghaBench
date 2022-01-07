
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct gb_gpio_direction_out_request {size_t which; int value; } ;
struct gb_gpio_controller {TYPE_1__* lines; int connection; } ;
typedef int request ;
struct TYPE_2__ {scalar_t__ direction; } ;


 int GB_GPIO_TYPE_DIRECTION_OUT ;
 int gb_operation_sync (int ,int ,struct gb_gpio_direction_out_request*,int,int *,int ) ;

__attribute__((used)) static int gb_gpio_direction_out_operation(struct gb_gpio_controller *ggc,
        u8 which, bool value_high)
{
 struct gb_gpio_direction_out_request request;
 int ret;

 request.which = which;
 request.value = value_high ? 1 : 0;
 ret = gb_operation_sync(ggc->connection, GB_GPIO_TYPE_DIRECTION_OUT,
    &request, sizeof(request), ((void*)0), 0);
 if (!ret)
  ggc->lines[which].direction = 0;
 return ret;
}
