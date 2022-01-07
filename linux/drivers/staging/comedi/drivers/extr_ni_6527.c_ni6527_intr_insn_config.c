
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int n_chan; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;




 int EINVAL ;


 int ni6527_set_edge_detection (struct comedi_device*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int ni6527_intr_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 unsigned int mask = 0xffffffff;
 unsigned int rising, falling, shift;

 switch (data[0]) {
 case 129:

  if (insn->n != 3)
   return -EINVAL;
  rising = data[1];
  falling = data[2];
  ni6527_set_edge_detection(dev, mask, rising, falling);
  break;
 case 128:

  if (data[1] != 0)
   return -EINVAL;

  switch (data[2]) {
  case 131:
   rising = 0;
   falling = 0;
   break;
  case 130:

   shift = data[3];
   if (shift >= s->n_chan) {
    mask = 0;
    rising = 0;
    falling = 0;
   } else {
    mask <<= shift;
    rising = data[4] << shift;
    falling = data[5] << shift;
   }
   break;
  default:
   return -EINVAL;
  }
  ni6527_set_edge_detection(dev, mask, rising, falling);
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
