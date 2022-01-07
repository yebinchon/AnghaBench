
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long claim_dma_lock () ;
 unsigned int comedi_isadma_disable (unsigned int) ;
 int enable_dma (unsigned int) ;
 int release_dma_lock (unsigned long) ;
 int udelay (int) ;

unsigned int comedi_isadma_disable_on_sample(unsigned int dma_chan,
          unsigned int size)
{
 int stalled = 0;
 unsigned long flags;
 unsigned int residue;
 unsigned int new_residue;

 residue = comedi_isadma_disable(dma_chan);
 while (residue % size) {

  flags = claim_dma_lock();
  enable_dma(dma_chan);
  release_dma_lock(flags);

  udelay(2);
  new_residue = comedi_isadma_disable(dma_chan);


  if (new_residue == residue) {
   stalled++;
   if (stalled > 10)
    break;
  } else {
   residue = new_residue;
   stalled = 0;
  }
 }
 return residue;
}
