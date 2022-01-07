
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {scalar_t__ main_iobase; } ;
struct pcidas64_board {scalar_t__ layout; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {struct pcidas64_private* private; struct pcidas64_board* board_ptr; } ;


 scalar_t__ ADC_WRITE_PNTR_REG ;
 int EBUSY ;
 scalar_t__ HW_STATUS_REG ;
 scalar_t__ LAYOUT_4020 ;
 scalar_t__ pipe_full_bits (unsigned int) ;
 unsigned int readw (scalar_t__) ;

__attribute__((used)) static int cb_pcidas64_ai_eoc(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned long context)
{
 const struct pcidas64_board *board = dev->board_ptr;
 struct pcidas64_private *devpriv = dev->private;
 unsigned int status;

 status = readw(devpriv->main_iobase + HW_STATUS_REG);
 if (board->layout == LAYOUT_4020) {
  status = readw(devpriv->main_iobase + ADC_WRITE_PNTR_REG);
  if (status)
   return 0;
 } else {
  if (pipe_full_bits(status))
   return 0;
 }
 return -EBUSY;
}
