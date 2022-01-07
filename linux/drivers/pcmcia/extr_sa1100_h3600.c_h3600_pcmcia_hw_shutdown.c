
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int nr; } ;


 int H3XXX_EGPIO_CARD_RESET ;
 int H3XXX_EGPIO_OPT_NVRAM_ON ;
 int H3XXX_EGPIO_OPT_ON ;
 int H3XXX_EGPIO_OPT_RESET ;
 int gpio_free (int ) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void h3600_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 switch (skt->nr) {
 case 0:

  gpio_set_value(H3XXX_EGPIO_OPT_NVRAM_ON, 0);
  gpio_set_value(H3XXX_EGPIO_OPT_ON, 0);
  gpio_set_value(H3XXX_EGPIO_OPT_RESET, 1);

  gpio_free(H3XXX_EGPIO_CARD_RESET);
  gpio_free(H3XXX_EGPIO_OPT_RESET);
  gpio_free(H3XXX_EGPIO_OPT_ON);
  gpio_free(H3XXX_EGPIO_OPT_NVRAM_ON);
  break;
 case 1:
  break;
 }
}
