
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int flags; scalar_t__ io_irq; } ;
struct TYPE_8__ {int pci_irq; } ;
struct soc_pcmcia_socket {int irq_state; TYPE_3__ cs_state; TYPE_2__ socket; struct gpio_desc* gpio_bus_enable; struct gpio_desc* gpio_reset; TYPE_1__* ops; int nr; } ;
struct gpio_desc {int dummy; } ;
typedef TYPE_3__ socket_state_t ;
struct TYPE_7__ {int (* configure_socket ) (struct soc_pcmcia_socket*,TYPE_3__*) ;} ;


 int DECLARE_BITMAP (int ,int) ;
 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_NONE ;
 int SS_OUTPUT_ENA ;
 int SS_RESET ;
 int WARN_ON (int) ;
 int __assign_bit (int ,int ,int) ;
 int gpiod_set_array_value_cansleep (int,struct gpio_desc**,int *,int ) ;
 int irq_set_irq_type (int ,int ) ;
 int pr_err (char*,int ) ;
 int stub1 (struct soc_pcmcia_socket*,TYPE_3__*) ;
 int stub2 (struct soc_pcmcia_socket*,TYPE_3__*) ;
 int values ;

__attribute__((used)) static int soc_common_pcmcia_config_skt(
 struct soc_pcmcia_socket *skt, socket_state_t *state)
{
 int ret;

 ret = skt->ops->configure_socket(skt, state);
 if (ret < 0) {
  pr_err("soc_common_pcmcia: unable to configure socket %d\n",
         skt->nr);

  WARN_ON(skt->ops->configure_socket(skt, &skt->cs_state));
  return ret;
 }

 if (ret == 0) {
  struct gpio_desc *descs[2];
  DECLARE_BITMAP(values, 2);
  int n = 0;

  if (skt->gpio_reset) {
   descs[n] = skt->gpio_reset;
   __assign_bit(n++, values, state->flags & SS_RESET);
  }
  if (skt->gpio_bus_enable) {
   descs[n] = skt->gpio_bus_enable;
   __assign_bit(n++, values, state->flags & SS_OUTPUT_ENA);
  }

  if (n)
   gpiod_set_array_value_cansleep(n, descs, ((void*)0), values);





  if (skt->irq_state != 1 && state->io_irq) {
   skt->irq_state = 1;
   irq_set_irq_type(skt->socket.pci_irq,
      IRQ_TYPE_EDGE_FALLING);
  } else if (skt->irq_state == 1 && state->io_irq == 0) {
   skt->irq_state = 0;
   irq_set_irq_type(skt->socket.pci_irq, IRQ_TYPE_NONE);
  }

  skt->cs_state = *state;
 }

 return ret;
}
