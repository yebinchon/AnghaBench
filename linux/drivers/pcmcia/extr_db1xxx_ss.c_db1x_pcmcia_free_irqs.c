
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db1x_pcmcia_sock {int stschg_irq; int insert_irq; int eject_irq; } ;


 int free_irq (int,struct db1x_pcmcia_sock*) ;

__attribute__((used)) static void db1x_pcmcia_free_irqs(struct db1x_pcmcia_sock *sock)
{
 if (sock->stschg_irq != -1)
  free_irq(sock->stschg_irq, sock);

 free_irq(sock->insert_irq, sock);
 if (sock->eject_irq != -1)
  free_irq(sock->eject_irq, sock);
}
