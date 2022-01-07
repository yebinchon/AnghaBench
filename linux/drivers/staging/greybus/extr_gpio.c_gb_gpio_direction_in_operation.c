
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct gb_gpio_direction_in_request {size_t which; } ;
struct gb_gpio_controller {TYPE_1__* lines; int connection; } ;
typedef int request ;
struct TYPE_2__ {int direction; } ;


 int GB_GPIO_TYPE_DIRECTION_IN ;
 int gb_operation_sync (int ,int ,struct gb_gpio_direction_in_request*,int,int *,int ) ;

__attribute__((used)) static int gb_gpio_direction_in_operation(struct gb_gpio_controller *ggc,
       u8 which)
{
 struct gb_gpio_direction_in_request request;
 int ret;

 request.which = which;
 ret = gb_operation_sync(ggc->connection, GB_GPIO_TYPE_DIRECTION_IN,
    &request, sizeof(request), ((void*)0), 0);
 if (!ret)
  ggc->lines[which].direction = 1;
 return ret;
}
