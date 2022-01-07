
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {scalar_t__ nr; } ;


 int ARRAY_SIZE (int ) ;
 int gpio_free_array (int ,int ) ;
 int vpac270_cf_gpios ;
 int vpac270_pcmcia_gpios ;

__attribute__((used)) static void vpac270_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 if (skt->nr == 0)
  gpio_free_array(vpac270_pcmcia_gpios,
     ARRAY_SIZE(vpac270_pcmcia_gpios));
 else
  gpio_free_array(vpac270_cf_gpios,
     ARRAY_SIZE(vpac270_cf_gpios));
}
