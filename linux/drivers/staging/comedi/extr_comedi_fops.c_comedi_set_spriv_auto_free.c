
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;


 int COMEDI_SRF_FREE_SPRIV ;
 int __comedi_set_subdevice_runflags (struct comedi_subdevice*,int ) ;

void comedi_set_spriv_auto_free(struct comedi_subdevice *s)
{
 __comedi_set_subdevice_runflags(s, COMEDI_SRF_FREE_SPRIV);
}
