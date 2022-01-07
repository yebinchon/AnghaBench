
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;


 unsigned int comedi_get_subdevice_runflags (struct comedi_subdevice*) ;
 int comedi_is_runflags_running (unsigned int) ;

bool comedi_is_subdevice_running(struct comedi_subdevice *s)
{
 unsigned int runflags = comedi_get_subdevice_runflags(s);

 return comedi_is_runflags_running(runflags);
}
