
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xxs1500_pcmcia_sock {int socket; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SS_DETECT ;
 int pcmcia_parse_events (int *,int ) ;

__attribute__((used)) static irqreturn_t cdirq(int irq, void *data)
{
 struct xxs1500_pcmcia_sock *sock = data;

 pcmcia_parse_events(&sock->socket, SS_DETECT);

 return IRQ_HANDLED;
}
