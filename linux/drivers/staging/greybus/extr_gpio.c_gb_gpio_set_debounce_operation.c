
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct gb_gpio_set_debounce_request {size_t which; int usec; } ;
struct gb_gpio_controller {TYPE_1__* lines; int connection; } ;
typedef int request ;
struct TYPE_2__ {int debounce_usec; } ;


 int GB_GPIO_TYPE_SET_DEBOUNCE ;
 int cpu_to_le16 (int ) ;
 int gb_operation_sync (int ,int ,struct gb_gpio_set_debounce_request*,int,int *,int ) ;

__attribute__((used)) static int gb_gpio_set_debounce_operation(struct gb_gpio_controller *ggc,
       u8 which, u16 debounce_usec)
{
 struct gb_gpio_set_debounce_request request;
 int ret;

 request.which = which;
 request.usec = cpu_to_le16(debounce_usec);
 ret = gb_operation_sync(ggc->connection, GB_GPIO_TYPE_SET_DEBOUNCE,
    &request, sizeof(request), ((void*)0), 0);
 if (!ret)
  ggc->lines[which].debounce_usec = debounce_usec;
 return ret;
}
