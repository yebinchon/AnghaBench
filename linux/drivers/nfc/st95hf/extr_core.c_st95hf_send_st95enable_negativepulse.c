
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st95hf_context {int enable_gpio; } ;


 int HIGH ;
 int LOW ;
 int gpio_set_value (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void st95hf_send_st95enable_negativepulse(struct st95hf_context *st95con)
{

 gpio_set_value(st95con->enable_gpio, HIGH);


 usleep_range(1000, 2000);


 gpio_set_value(st95con->enable_gpio, LOW);


 usleep_range(1000, 2000);


 gpio_set_value(st95con->enable_gpio, HIGH);
}
