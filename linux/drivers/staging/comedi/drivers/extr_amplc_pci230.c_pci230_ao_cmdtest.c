
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci230_private {int hwver; } ;
struct pci230_board {scalar_t__ min_hwver; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct pci230_private* private; struct pci230_board* board_ptr; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int start_arg; int scan_begin_arg; int scan_end_arg; scalar_t__ chanlist_len; int stop_arg; scalar_t__ chanlist; int flags; } ;


 void* COMBINE (int,int ,int) ;
 int CR_EDGE ;
 int CR_FLAGS_MASK ;
 int CR_INVERT ;
 int EINVAL ;
 int MAX_SPEED_AO ;
 int MIN_SPEED_AO ;
 unsigned int TRIG_COUNT ;

 int TRIG_INT ;
 unsigned int TRIG_NONE ;
 unsigned int TRIG_NOW ;

 int comedi_check_trigger_arg_is (int*,scalar_t__) ;
 int comedi_check_trigger_arg_max (int*,int ) ;
 int comedi_check_trigger_arg_min (int*,int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,unsigned int) ;
 int pci230_ao_check_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;
 int pci230_ns_to_single_timer (unsigned int*,int ) ;

__attribute__((used)) static int pci230_ao_cmdtest(struct comedi_device *dev,
        struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 const struct pci230_board *board = dev->board_ptr;
 struct pci230_private *devpriv = dev->private;
 int err = 0;
 unsigned int tmp;



 err |= comedi_check_trigger_src(&cmd->start_src, TRIG_INT);

 tmp = 128 | TRIG_INT;
 if (board->min_hwver > 0 && devpriv->hwver >= 2) {
  tmp |= 129;
 }
 err |= comedi_check_trigger_src(&cmd->scan_begin_src, tmp);

 err |= comedi_check_trigger_src(&cmd->convert_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->scan_begin_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);



 if (err)
  return 2;



 err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
 switch (cmd->scan_begin_src) {
 case 128:
  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
          8000);
  err |= comedi_check_trigger_arg_max(&cmd->scan_begin_arg,
          4294967295u);
  break;
 case 129:




  if (cmd->scan_begin_arg & ~CR_FLAGS_MASK) {
   cmd->scan_begin_arg = COMBINE(cmd->scan_begin_arg, 0,
            ~CR_FLAGS_MASK);
   err |= -EINVAL;
  }




  if (cmd->scan_begin_arg & CR_FLAGS_MASK &
      ~(CR_EDGE | CR_INVERT)) {
   cmd->scan_begin_arg =
       COMBINE(cmd->scan_begin_arg, 0,
        CR_FLAGS_MASK & ~(CR_EDGE | CR_INVERT));
   err |= -EINVAL;
  }
  break;
 default:
  err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
  break;
 }

 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 if (cmd->stop_src == TRIG_COUNT)
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
 else
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);

 if (err)
  return 3;



 if (cmd->scan_begin_src == 128) {
  tmp = cmd->scan_begin_arg;
  pci230_ns_to_single_timer(&cmd->scan_begin_arg, cmd->flags);
  if (tmp != cmd->scan_begin_arg)
   err++;
 }

 if (err)
  return 4;


 if (cmd->chanlist && cmd->chanlist_len > 0)
  err |= pci230_ao_check_chanlist(dev, s, cmd);

 if (err)
  return 5;

 return 0;
}
