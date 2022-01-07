
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int runflags; } ;



__attribute__((used)) static void __comedi_set_subdevice_runflags(struct comedi_subdevice *s,
         unsigned int bits)
{
 s->runflags |= bits;
}
