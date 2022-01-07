
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rp2_card {scalar_t__ n_ports; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ PORTS_PER_ASIC ;
 int rp2_asic_interrupt (struct rp2_card*,int) ;

__attribute__((used)) static irqreturn_t rp2_uart_interrupt(int irq, void *dev_id)
{
 struct rp2_card *card = dev_id;
 int handled;

 handled = rp2_asic_interrupt(card, 0);
 if (card->n_ports >= PORTS_PER_ASIC)
  handled += rp2_asic_interrupt(card, 1);

 return handled ? IRQ_HANDLED : IRQ_NONE;
}
