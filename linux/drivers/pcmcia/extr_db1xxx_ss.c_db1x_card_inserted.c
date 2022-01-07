
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db1x_pcmcia_sock {int board_type; } ;




 int db1000_card_inserted (struct db1x_pcmcia_sock*) ;
 int db1200_card_inserted (struct db1x_pcmcia_sock*) ;
 int db1300_card_inserted (struct db1x_pcmcia_sock*) ;

__attribute__((used)) static int db1x_card_inserted(struct db1x_pcmcia_sock *sock)
{
 switch (sock->board_type) {
 case 129:
  return db1200_card_inserted(sock);
 case 128:
  return db1300_card_inserted(sock);
 default:
  return db1000_card_inserted(sock);
 }
}
