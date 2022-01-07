
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_board {int has_clk_gat_sce; scalar_t__ is_pcie; } ;
struct comedi_subdevice {struct comedi_8254* private; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct dio200_board* board_ptr; } ;
struct comedi_8254 {unsigned int* gate_src; unsigned int* clock_src; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;




 unsigned int* clock_period ;
 int dio200_subdev_8254_set_clock_src (struct comedi_device*,struct comedi_subdevice*,unsigned int,unsigned int) ;
 int dio200_subdev_8254_set_gate_src (struct comedi_device*,struct comedi_subdevice*,unsigned int,unsigned int) ;

__attribute__((used)) static int dio200_subdev_8254_config(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 const struct dio200_board *board = dev->board_ptr;
 struct comedi_8254 *i8254 = s->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int max_src = board->is_pcie ? 31 : 7;
 unsigned int src;

 if (!board->has_clk_gat_sce)
  return -EINVAL;

 switch (data[0]) {
 case 128:
  src = data[2];
  if (src > max_src)
   return -EINVAL;

  dio200_subdev_8254_set_gate_src(dev, s, chan, src);
  i8254->gate_src[chan] = src;
  break;
 case 130:
  data[2] = i8254->gate_src[chan];
  break;
 case 129:
  src = data[1];
  if (src > max_src)
   return -EINVAL;

  dio200_subdev_8254_set_clock_src(dev, s, chan, src);
  i8254->clock_src[chan] = src;
  break;
 case 131:
  data[1] = i8254->clock_src[chan];
  data[2] = clock_period[i8254->clock_src[chan]];
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
