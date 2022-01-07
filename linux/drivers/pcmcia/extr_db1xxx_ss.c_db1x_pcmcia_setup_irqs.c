
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db1x_pcmcia_sock {int stschg_irq; scalar_t__ board_type; int insert_irq; int eject_irq; } ;


 scalar_t__ BOARD_TYPE_DB1200 ;
 scalar_t__ BOARD_TYPE_DB1300 ;
 int IRQ_TYPE_EDGE_BOTH ;
 int db1000_pcmcia_cdirq ;
 int db1000_pcmcia_stschgirq ;
 int db1200_pcmcia_cdirq ;
 int db1200_pcmcia_cdirq_fn ;
 scalar_t__ db1x_card_inserted (struct db1x_pcmcia_sock*) ;
 int enable_irq (int) ;
 int free_irq (int,struct db1x_pcmcia_sock*) ;
 int irq_set_irq_type (int,int ) ;
 int request_irq (int,int ,int ,char*,struct db1x_pcmcia_sock*) ;
 int request_threaded_irq (int,int ,int ,int ,char*,struct db1x_pcmcia_sock*) ;

__attribute__((used)) static int db1x_pcmcia_setup_irqs(struct db1x_pcmcia_sock *sock)
{
 int ret;

 if (sock->stschg_irq != -1) {
  ret = request_irq(sock->stschg_irq, db1000_pcmcia_stschgirq,
      0, "pcmcia_stschg", sock);
  if (ret)
   return ret;
 }







 if ((sock->board_type == BOARD_TYPE_DB1200) ||
     (sock->board_type == BOARD_TYPE_DB1300)) {
  ret = request_threaded_irq(sock->insert_irq, db1200_pcmcia_cdirq,
   db1200_pcmcia_cdirq_fn, 0, "pcmcia_insert", sock);
  if (ret)
   goto out1;

  ret = request_threaded_irq(sock->eject_irq, db1200_pcmcia_cdirq,
   db1200_pcmcia_cdirq_fn, 0, "pcmcia_eject", sock);
  if (ret) {
   free_irq(sock->insert_irq, sock);
   goto out1;
  }


  if (db1x_card_inserted(sock))
   enable_irq(sock->eject_irq);
  else
   enable_irq(sock->insert_irq);
 } else {



  irq_set_irq_type(sock->insert_irq, IRQ_TYPE_EDGE_BOTH);
  ret = request_irq(sock->insert_irq, db1000_pcmcia_cdirq,
      0, "pcmcia_carddetect", sock);

  if (ret)
   goto out1;
 }

 return 0;

out1:
 if (sock->stschg_irq != -1)
  free_irq(sock->stschg_irq, sock);

 return ret;
}
