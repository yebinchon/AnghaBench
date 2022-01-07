
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;


 unsigned int comedi_sample_shift (struct comedi_subdevice*) ;

__attribute__((used)) static inline unsigned int comedi_samples_to_bytes(struct comedi_subdevice *s,
         unsigned int nsamples)
{
 return nsamples << comedi_sample_shift(s);
}
