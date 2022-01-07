
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 int GPIO_PCMCIA_RESET ;
 int gpio_free (int ) ;

__attribute__((used)) static void cmx270_pcmcia_shutdown(struct soc_pcmcia_socket *skt)
{
 gpio_free(GPIO_PCMCIA_RESET);
}
