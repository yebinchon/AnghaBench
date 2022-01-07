
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_isadma_desc {int chan; int size; int hw_addr; int mode; } ;


 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int enable_dma (int ) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int ,int ) ;
 int set_dma_count (int ,int ) ;
 int set_dma_mode (int ,int ) ;

void comedi_isadma_program(struct comedi_isadma_desc *desc)
{
 unsigned long flags;

 flags = claim_dma_lock();
 clear_dma_ff(desc->chan);
 set_dma_mode(desc->chan, desc->mode);
 set_dma_addr(desc->chan, desc->hw_addr);
 set_dma_count(desc->chan, desc->size);
 enable_dma(desc->chan);
 release_dma_lock(flags);
}
