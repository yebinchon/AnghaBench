
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; unsigned int state; } ;



unsigned int comedi_dio_update_state(struct comedi_subdevice *s,
         unsigned int *data)
{
 unsigned int chanmask = (s->n_chan < 32) ? ((1 << s->n_chan) - 1)
       : 0xffffffff;
 unsigned int mask = data[0] & chanmask;
 unsigned int bits = data[1];

 if (mask) {
  s->state &= ~mask;
  s->state |= (bits & mask);
 }

 return mask;
}
