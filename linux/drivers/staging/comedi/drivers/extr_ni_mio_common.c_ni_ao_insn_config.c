
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {TYPE_1__* mite; } ;
struct ni_board_struct {unsigned int ao_speed; int ao_fifo_depth; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {struct ni_private* private; struct ni_board_struct* board_ptr; } ;
struct TYPE_2__ {unsigned int fifo_size; } ;




 int EINVAL ;



 unsigned int comedi_samples_to_bytes (struct comedi_subdevice*,int ) ;
 int ni_ao_arm (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int ni_ao_insn_config(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn, unsigned int *data)
{
 const struct ni_board_struct *board = dev->board_ptr;
 struct ni_private *devpriv = dev->private;
 unsigned int nbytes;

 switch (data[0]) {
 case 128:
  switch (data[1]) {
  case 131:
   nbytes = comedi_samples_to_bytes(s,
        board->ao_fifo_depth);
   data[2] = 1 + nbytes;
   if (devpriv->mite)
    data[2] += devpriv->mite->fifo_size;
   break;
  case 132:
   data[2] = 0;
   break;
  default:
   return -EINVAL;
  }
  return 0;
 case 130:
  return ni_ao_arm(dev, s);
 case 129:


  data[1] = board->ao_speed * data[3];
  data[2] = 0;
  return 0;
 default:
  break;
 }

 return -EINVAL;
}
