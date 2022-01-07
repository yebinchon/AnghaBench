
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int gpio_free_array (int ,int ) ;
 int palmld_pcmcia_gpios ;

__attribute__((used)) static void palmld_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 gpio_free_array(palmld_pcmcia_gpios, ARRAY_SIZE(palmld_pcmcia_gpios));
}
