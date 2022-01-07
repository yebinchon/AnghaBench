
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {unsigned long iobase; } ;


 int PCMUIO_ASIC_IOSIZE ;

__attribute__((used)) static inline unsigned long pcmuio_asic_iobase(struct comedi_device *dev,
            int asic)
{
 return dev->iobase + (asic * PCMUIO_ASIC_IOSIZE);
}
