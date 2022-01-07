
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db1x_pcmcia_sock {int nr; } ;


 int BCSR_SIGSTAT ;
 unsigned short bcsr_read (int ) ;

__attribute__((used)) static int db1200_card_inserted(struct db1x_pcmcia_sock *sock)
{
 unsigned short sigstat;

 sigstat = bcsr_read(BCSR_SIGSTAT);
 return sigstat & 1 << (8 + 2 * sock->nr);
}
