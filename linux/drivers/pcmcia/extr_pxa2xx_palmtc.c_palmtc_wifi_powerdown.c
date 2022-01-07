
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_NR_PALMTC_PCMCIA_POWER1 ;
 int GPIO_NR_PALMTC_PCMCIA_POWER2 ;
 int GPIO_NR_PALMTC_PCMCIA_RESET ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static int palmtc_wifi_powerdown(void)
{
 gpio_set_value(GPIO_NR_PALMTC_PCMCIA_RESET, 1);
 gpio_set_value(GPIO_NR_PALMTC_PCMCIA_POWER2, 0);
 mdelay(40);
 gpio_set_value(GPIO_NR_PALMTC_PCMCIA_POWER1, 0);
 return 0;
}
