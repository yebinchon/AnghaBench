
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db1x_pcmcia_sock {int socket; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SS_DETECT ;
 int pcmcia_parse_events (int *,int ) ;

__attribute__((used)) static irqreturn_t db1000_pcmcia_cdirq(int irq, void *data)
{
 struct db1x_pcmcia_sock *sock = data;

 pcmcia_parse_events(&sock->socket, SS_DETECT);

 return IRQ_HANDLED;
}
