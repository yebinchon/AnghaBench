
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {int nr; TYPE_1__* stat; } ;
struct TYPE_2__ {char* name; } ;


 int H3XXX_EGPIO_CARD_RESET ;
 int H3XXX_EGPIO_OPT_NVRAM_ON ;
 int H3XXX_EGPIO_OPT_ON ;
 int H3XXX_EGPIO_OPT_RESET ;
 int H3XXX_GPIO_PCMCIA_IRQ0 ;
 size_t SOC_STAT_CD ;
 size_t SOC_STAT_RDY ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int soc_pcmcia_request_gpiods (struct soc_pcmcia_socket*) ;

__attribute__((used)) static int h3600_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 int err;

 skt->stat[SOC_STAT_CD].name = skt->nr ? "pcmcia1-detect" : "pcmcia0-detect";
 skt->stat[SOC_STAT_RDY].name = skt->nr ? "pcmcia1-ready" : "pcmcia0-ready";

 err = soc_pcmcia_request_gpiods(skt);
 if (err)
  return err;

 switch (skt->nr) {
 case 0:
  err = gpio_request(H3XXX_EGPIO_OPT_NVRAM_ON, "OPT NVRAM ON");
  if (err)
   goto err01;
  err = gpio_direction_output(H3XXX_EGPIO_OPT_NVRAM_ON, 0);
  if (err)
   goto err03;
  err = gpio_request(H3XXX_EGPIO_OPT_ON, "OPT ON");
  if (err)
   goto err03;
  err = gpio_direction_output(H3XXX_EGPIO_OPT_ON, 0);
  if (err)
   goto err04;
  err = gpio_request(H3XXX_EGPIO_OPT_RESET, "OPT RESET");
  if (err)
   goto err04;
  err = gpio_direction_output(H3XXX_EGPIO_OPT_RESET, 0);
  if (err)
   goto err05;
  err = gpio_request(H3XXX_EGPIO_CARD_RESET, "PCMCIA CARD RESET");
  if (err)
   goto err05;
  err = gpio_direction_output(H3XXX_EGPIO_CARD_RESET, 0);
  if (err)
   goto err06;
  break;
 case 1:
  break;
 }
 return 0;

err06: gpio_free(H3XXX_EGPIO_CARD_RESET);
err05: gpio_free(H3XXX_EGPIO_OPT_RESET);
err04: gpio_free(H3XXX_EGPIO_OPT_ON);
err03: gpio_free(H3XXX_EGPIO_OPT_NVRAM_ON);
err01: gpio_free(H3XXX_GPIO_PCMCIA_IRQ0);
 return err;
}
