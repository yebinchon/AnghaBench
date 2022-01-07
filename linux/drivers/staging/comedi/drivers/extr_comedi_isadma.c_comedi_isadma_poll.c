
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_isadma_desc {unsigned int size; int chan; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;


 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;
 unsigned int get_dma_residue (int ) ;
 int isa_dma_bridge_buggy ;
 int release_dma_lock (unsigned long) ;

unsigned int comedi_isadma_poll(struct comedi_isadma *dma)
{
 struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
 unsigned long flags;
 unsigned int result;
 unsigned int result1;

 flags = claim_dma_lock();
 clear_dma_ff(desc->chan);
 if (!isa_dma_bridge_buggy)
  disable_dma(desc->chan);
 result = get_dma_residue(desc->chan);





 result1 = get_dma_residue(desc->chan);
 if (!isa_dma_bridge_buggy)
  enable_dma(desc->chan);
 release_dma_lock(flags);

 if (result < result1)
  result = result1;
 if (result >= desc->size || result == 0)
  return 0;
 return desc->size - result;
}
