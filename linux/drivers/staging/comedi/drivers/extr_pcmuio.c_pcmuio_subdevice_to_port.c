
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int index; } ;



__attribute__((used)) static inline int pcmuio_subdevice_to_port(struct comedi_subdevice *s)
{




 return (s->index % 2) ? 3 : 0;
}
