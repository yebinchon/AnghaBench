
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dummy; } ;


 int GPIO_BATTDEAD ;
 int GPIO_BATTWARN ;
 int GPIO_CDA ;
 int GPIO_CDB ;
 int GPIO_OUTEN ;
 int GPIO_POWER ;
 int GPIO_RESET ;
 int GPIO_VSH ;
 int GPIO_VSL ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int) ;

__attribute__((used)) static int xxs1500_pcmcia_sock_init(struct pcmcia_socket *skt)
{
 gpio_direction_input(GPIO_CDA);
 gpio_direction_input(GPIO_CDB);
 gpio_direction_input(GPIO_VSL);
 gpio_direction_input(GPIO_VSH);
 gpio_direction_input(GPIO_BATTDEAD);
 gpio_direction_input(GPIO_BATTWARN);
 gpio_direction_output(GPIO_RESET, 1);
 gpio_direction_output(GPIO_OUTEN, 1);
 gpio_direction_output(GPIO_POWER, 1);

 return 0;
}
