
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nidio_board {unsigned int dio_speed; } ;
struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ mmio; struct nidio_board* board_ptr; } ;


 unsigned int INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS ;
 scalar_t__ PORT_PIN_DIRECTIONS (int ) ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ni_pcidio_insn_config(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 int ret;

 if (data[0] == INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS) {
  const struct nidio_board *board = dev->board_ptr;


  data[1] = board->dio_speed;
  data[2] = 0;
  return 0;
 }

 ret = comedi_dio_insn_config(dev, s, insn, data, 0);
 if (ret)
  return ret;

 writel(s->io_bits, dev->mmio + PORT_PIN_DIRECTIONS(0));

 return insn->n;
}
