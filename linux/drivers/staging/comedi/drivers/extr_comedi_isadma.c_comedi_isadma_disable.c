
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long claim_dma_lock () ;
 int disable_dma (unsigned int) ;
 unsigned int get_dma_residue (unsigned int) ;
 int release_dma_lock (unsigned long) ;

unsigned int comedi_isadma_disable(unsigned int dma_chan)
{
 unsigned long flags;
 unsigned int residue;

 flags = claim_dma_lock();
 disable_dma(dma_chan);
 residue = get_dma_residue(dma_chan);
 release_dma_lock(flags);

 return residue;
}
