
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; } ;


 int SDF_LSAMPL ;

__attribute__((used)) static inline unsigned int comedi_sample_shift(struct comedi_subdevice *s)
{
 return s->subdev_flags & SDF_LSAMPL ? 2 : 1;
}
