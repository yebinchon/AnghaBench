
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GPIO_NEGATIVE_EDGE_STS ;
 size_t OLPC_DCON_STAT0 ;
 size_t OLPC_DCON_STAT1 ;
 int OLPC_GPIO_DCON_IRQ ;
 int cs5535_gpio_set (int ,int ) ;
 int gpiod_get_value (int ) ;
 int * gpios ;

__attribute__((used)) static int dcon_read_status_xo_1(u8 *status)
{
 *status = gpiod_get_value(gpios[OLPC_DCON_STAT0]);
 *status |= gpiod_get_value(gpios[OLPC_DCON_STAT1]) << 1;


 cs5535_gpio_set(OLPC_GPIO_DCON_IRQ, GPIO_NEGATIVE_EDGE_STS);

 return 0;
}
