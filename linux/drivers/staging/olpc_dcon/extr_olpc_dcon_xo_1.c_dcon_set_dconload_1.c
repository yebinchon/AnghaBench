
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t OLPC_DCON_LOAD ;
 int gpiod_set_value (int ,int) ;
 int * gpios ;

__attribute__((used)) static void dcon_set_dconload_1(int val)
{
 gpiod_set_value(gpios[OLPC_DCON_LOAD], val);
}
