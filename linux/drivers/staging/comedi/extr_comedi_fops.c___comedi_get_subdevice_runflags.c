
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int runflags; } ;



__attribute__((used)) static unsigned int __comedi_get_subdevice_runflags(struct comedi_subdevice *s)
{
 return s->runflags;
}
