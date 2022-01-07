
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_gcu_priv {struct pxa3xx_gcu_batch* free; } ;
struct pxa3xx_gcu_batch {int phys; int ptr; struct pxa3xx_gcu_batch* next; } ;
struct device {int dummy; } ;


 int PXA3XX_GCU_BATCH_WORDS ;
 int dma_free_coherent (struct device*,int,int ,int ) ;
 int kfree (struct pxa3xx_gcu_batch*) ;

__attribute__((used)) static void
pxa3xx_gcu_free_buffers(struct device *dev,
   struct pxa3xx_gcu_priv *priv)
{
 struct pxa3xx_gcu_batch *next, *buffer = priv->free;

 while (buffer) {
  next = buffer->next;

  dma_free_coherent(dev, PXA3XX_GCU_BATCH_WORDS * 4,
      buffer->ptr, buffer->phys);

  kfree(buffer);
  buffer = next;
 }

 priv->free = ((void*)0);
}
