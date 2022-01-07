
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_isadma {int dummy; } ;
struct comedi_device {int dummy; } ;



__attribute__((used)) static inline struct comedi_isadma *
comedi_isadma_alloc(struct comedi_device *dev, int n_desc,
      unsigned int dma_chan1, unsigned int dma_chan2,
      unsigned int maxsize, char dma_dir)
{
 return ((void*)0);
}
