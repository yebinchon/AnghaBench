
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db1x_pcmcia_sock {int stschg_irq; } ;


 int disable_irq (int) ;
 int enable_irq (int) ;

__attribute__((used)) static inline void set_stschg(struct db1x_pcmcia_sock *sock, int en)
{
 if (sock->stschg_irq != -1) {
  if (en)
   enable_irq(sock->stschg_irq);
  else
   disable_irq(sock->stschg_irq);
 }
}
