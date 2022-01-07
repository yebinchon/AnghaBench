
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_gpio_line_count_response {int count; } ;
struct gb_gpio_controller {int line_max; int connection; } ;
typedef int response ;


 int GB_GPIO_TYPE_LINE_COUNT ;
 int gb_operation_sync (int ,int ,int *,int ,struct gb_gpio_line_count_response*,int) ;

__attribute__((used)) static int gb_gpio_line_count_operation(struct gb_gpio_controller *ggc)
{
 struct gb_gpio_line_count_response response;
 int ret;

 ret = gb_operation_sync(ggc->connection, GB_GPIO_TYPE_LINE_COUNT,
    ((void*)0), 0, &response, sizeof(response));
 if (!ret)
  ggc->line_max = response.count;
 return ret;
}
