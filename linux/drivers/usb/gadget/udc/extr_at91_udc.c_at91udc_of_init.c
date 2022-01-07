
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_device_id {int data; } ;
struct device_node {int dummy; } ;
struct at91_udc_data {int vbus_polled; int vbus_active_low; int pullup_active_low; void* pullup_pin; void* vbus_pin; } ;
struct at91_udc {int caps; struct at91_udc_data board; } ;
typedef enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;


 int OF_GPIO_ACTIVE_LOW ;
 int at91_udc_dt_ids ;
 void* of_get_named_gpio_flags (struct device_node*,char*,int ,int*) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static void at91udc_of_init(struct at91_udc *udc, struct device_node *np)
{
 struct at91_udc_data *board = &udc->board;
 const struct of_device_id *match;
 enum of_gpio_flags flags;
 u32 val;

 if (of_property_read_u32(np, "atmel,vbus-polled", &val) == 0)
  board->vbus_polled = 1;

 board->vbus_pin = of_get_named_gpio_flags(np, "atmel,vbus-gpio", 0,
        &flags);
 board->vbus_active_low = (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;

 board->pullup_pin = of_get_named_gpio_flags(np, "atmel,pullup-gpio", 0,
        &flags);

 board->pullup_active_low = (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;

 match = of_match_node(at91_udc_dt_ids, np);
 if (match)
  udc->caps = match->data;
}
