
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_isadma_desc {int n_desc; scalar_t__ chan2; scalar_t__ chan; struct comedi_isadma_desc* desc; int hw_addr; scalar_t__ virt_addr; int maxsize; int dev; } ;
struct comedi_isadma {int n_desc; scalar_t__ chan2; scalar_t__ chan; struct comedi_isadma* desc; int hw_addr; scalar_t__ virt_addr; int maxsize; int dev; } ;


 int dma_free_coherent (int ,int ,scalar_t__,int ) ;
 int free_dma (scalar_t__) ;
 int kfree (struct comedi_isadma_desc*) ;

void comedi_isadma_free(struct comedi_isadma *dma)
{
 struct comedi_isadma_desc *desc;
 int i;

 if (!dma)
  return;

 if (dma->desc) {
  for (i = 0; i < dma->n_desc; i++) {
   desc = &dma->desc[i];
   if (desc->virt_addr)
    dma_free_coherent(dma->dev, desc->maxsize,
        desc->virt_addr,
        desc->hw_addr);
  }
  kfree(dma->desc);
 }
 if (dma->chan2 && dma->chan2 != dma->chan)
  free_dma(dma->chan2);
 if (dma->chan)
  free_dma(dma->chan);
 kfree(dma);
}
