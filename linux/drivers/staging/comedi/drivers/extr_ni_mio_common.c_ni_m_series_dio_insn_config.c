
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_board_struct {unsigned int dio_speed; } ;
struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct ni_board_struct* board_ptr; } ;


 unsigned int INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS ;
 int NI_M_DIO_DIR_REG ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int ) ;
 int ni_writel (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int ni_m_series_dio_insn_config(struct comedi_device *dev,
           struct comedi_subdevice *s,
           struct comedi_insn *insn,
           unsigned int *data)
{
 int ret;

 if (data[0] == INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS) {
  const struct ni_board_struct *board = dev->board_ptr;


  data[1] = board->dio_speed;
  data[2] = 0;
  return 0;
 }

 ret = comedi_dio_insn_config(dev, s, insn, data, 0);
 if (ret)
  return ret;

 ni_writel(dev, s->io_bits, NI_M_DIO_DIR_REG);

 return insn->n;
}
