
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_gcu_priv {struct pxa3xx_gcu_batch* running; struct pxa3xx_gcu_batch* free; } ;
struct pxa3xx_gcu_batch {struct pxa3xx_gcu_batch* next; } ;



__attribute__((used)) static void
flush_running(struct pxa3xx_gcu_priv *priv)
{
 struct pxa3xx_gcu_batch *running = priv->running;
 struct pxa3xx_gcu_batch *next;

 while (running) {
  next = running->next;
  running->next = priv->free;
  priv->free = running;
  running = next;
 }

 priv->running = ((void*)0);
}
