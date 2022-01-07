
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int maxdata; } ;



__attribute__((used)) static inline unsigned int comedi_offset_munge(struct comedi_subdevice *s,
            unsigned int val)
{
 return val ^ s->maxdata ^ (s->maxdata >> 1);
}
