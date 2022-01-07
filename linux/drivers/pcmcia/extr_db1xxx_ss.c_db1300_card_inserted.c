
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db1x_pcmcia_sock {int dummy; } ;


 int BCSR_SIGSTAT ;
 int bcsr_read (int ) ;

__attribute__((used)) static int db1300_card_inserted(struct db1x_pcmcia_sock *sock)
{
 return bcsr_read(BCSR_SIGSTAT) & (1 << 8);
}
