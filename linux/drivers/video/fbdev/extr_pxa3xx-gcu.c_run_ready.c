
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_gcu_shared {int* buffer; int hw_running; unsigned int buffer_phys; } ;
struct pxa3xx_gcu_priv {int * ready_last; struct pxa3xx_gcu_batch* ready; struct pxa3xx_gcu_batch* running; struct pxa3xx_gcu_shared* shared; } ;
struct pxa3xx_gcu_batch {int phys; struct pxa3xx_gcu_batch* next; } ;


 int BUG_ON (int) ;
 int QDUMP (char*) ;
 int REG_GCRBBR ;
 int REG_GCRBLR ;
 int REG_GCRBTR ;
 int gc_writel (struct pxa3xx_gcu_priv*,int ,unsigned int) ;

__attribute__((used)) static void
run_ready(struct pxa3xx_gcu_priv *priv)
{
 unsigned int num = 0;
 struct pxa3xx_gcu_shared *shared = priv->shared;
 struct pxa3xx_gcu_batch *ready = priv->ready;

 QDUMP("Start");

 BUG_ON(!ready);

 shared->buffer[num++] = 0x05000000;

 while (ready) {
  shared->buffer[num++] = 0x00000001;
  shared->buffer[num++] = ready->phys;
  ready = ready->next;
 }

 shared->buffer[num++] = 0x05000000;
 priv->running = priv->ready;
 priv->ready = priv->ready_last = ((void*)0);
 gc_writel(priv, REG_GCRBLR, 0);
 shared->hw_running = 1;


 gc_writel(priv, REG_GCRBBR, shared->buffer_phys);


 gc_writel(priv, REG_GCRBTR, shared->buffer_phys + num * 4);


 gc_writel(priv, REG_GCRBLR, ((num + 63) & ~63) * 4);
}
