
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;


 unsigned int COMEDI_SRF_FREE_SPRIV ;
 unsigned int __comedi_get_subdevice_runflags (struct comedi_subdevice*) ;

bool comedi_can_auto_free_spriv(struct comedi_subdevice *s)
{
 unsigned int runflags = __comedi_get_subdevice_runflags(s);

 return runflags & COMEDI_SRF_FREE_SPRIV;
}
