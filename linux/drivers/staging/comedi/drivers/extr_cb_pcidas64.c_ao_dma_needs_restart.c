
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned short PLX_DMACSR_DONE ;
 unsigned short PLX_DMACSR_ENABLE ;
 scalar_t__ last_ao_dma_load_completed (struct comedi_device*) ;

__attribute__((used)) static inline int ao_dma_needs_restart(struct comedi_device *dev,
           unsigned short dma_status)
{
 if ((dma_status & PLX_DMACSR_DONE) == 0 ||
     (dma_status & PLX_DMACSR_ENABLE) == 0)
  return 0;
 if (last_ao_dma_load_completed(dev))
  return 0;

 return 1;
}
