
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_isadma_desc {int mode; } ;


 char COMEDI_ISADMA_READ ;
 int DMA_MODE_READ ;
 int DMA_MODE_WRITE ;

void comedi_isadma_set_mode(struct comedi_isadma_desc *desc, char dma_dir)
{
 desc->mode = (dma_dir == COMEDI_ISADMA_READ) ? DMA_MODE_READ
           : DMA_MODE_WRITE;
}
