
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db1x_pcmcia_sock {int insert_irq; int eject_irq; int socket; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SS_DETECT ;
 int enable_irq (int) ;
 int msleep (int) ;
 int pcmcia_parse_events (int *,int ) ;

__attribute__((used)) static irqreturn_t db1200_pcmcia_cdirq_fn(int irq, void *data)
{
 struct db1x_pcmcia_sock *sock = data;


 msleep(100);
 if (irq == sock->insert_irq)
  enable_irq(sock->eject_irq);
 else
  enable_irq(sock->insert_irq);

 pcmcia_parse_events(&sock->socket, SS_DETECT);

 return IRQ_HANDLED;
}
