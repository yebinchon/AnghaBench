
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int pacer; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int start_arg; int scan_begin_arg; unsigned int chanlist_len; unsigned int convert_arg; unsigned int scan_end_arg; int stop_arg; scalar_t__ chanlist; int flags; } ;


 void* COMBINE (int,int ,int) ;
 unsigned int CONVERT_PERIOD ;
 int CR_EDGE ;
 int CR_FLAGS_MASK ;
 int CR_INVERT ;
 int EINVAL ;
 int MAX_SCAN_PERIOD ;
 unsigned int MIN_SCAN_PERIOD ;




 int TRIG_NOW ;

 int comedi_8254_cascade_ns_to_timer (int ,unsigned int*,int ) ;
 int comedi_check_trigger_arg_is (unsigned int*,unsigned int) ;
 int comedi_check_trigger_arg_max (int*,int ) ;
 int comedi_check_trigger_arg_min (int*,int) ;
 int comedi_check_trigger_is_unique (int) ;
 int comedi_check_trigger_src (int*,int) ;
 int pci224_ao_check_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;

__attribute__((used)) static int
pci224_ao_cmdtest(struct comedi_device *dev, struct comedi_subdevice *s,
    struct comedi_cmd *cmd)
{
 int err = 0;
 unsigned int arg;



 err |= comedi_check_trigger_src(&cmd->start_src, 130 | 131);
 err |= comedi_check_trigger_src(&cmd->scan_begin_src,
     131 | 128);
 err |= comedi_check_trigger_src(&cmd->convert_src, TRIG_NOW);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, 132);
 err |= comedi_check_trigger_src(&cmd->stop_src,
     132 | 131 | 129);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->start_src);
 err |= comedi_check_trigger_is_unique(cmd->scan_begin_src);
 err |= comedi_check_trigger_is_unique(cmd->stop_src);







 arg = 0;
 if (cmd->start_src & 131)
  arg++;
 if (cmd->scan_begin_src & 131)
  arg++;
 if (cmd->stop_src & 131)
  arg++;
 if (arg > 1)
  err |= -EINVAL;

 if (err)
  return 2;



 switch (cmd->start_src) {
 case 130:
  err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
  break;
 case 131:

  if (cmd->start_arg & ~CR_FLAGS_MASK) {
   cmd->start_arg =
       COMBINE(cmd->start_arg, 0, ~CR_FLAGS_MASK);
   err |= -EINVAL;
  }

  if (cmd->start_arg & CR_FLAGS_MASK & ~CR_EDGE) {
   cmd->start_arg = COMBINE(cmd->start_arg, 0,
       CR_FLAGS_MASK & ~CR_EDGE);
   err |= -EINVAL;
  }
  break;
 }

 switch (cmd->scan_begin_src) {
 case 128:
  err |= comedi_check_trigger_arg_max(&cmd->scan_begin_arg,
          MAX_SCAN_PERIOD);

  arg = cmd->chanlist_len * CONVERT_PERIOD;
  if (arg < MIN_SCAN_PERIOD)
   arg = MIN_SCAN_PERIOD;
  err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg, arg);
  break;
 case 131:

  if (cmd->scan_begin_arg & ~CR_FLAGS_MASK) {
   cmd->scan_begin_arg =
       COMBINE(cmd->scan_begin_arg, 0, ~CR_FLAGS_MASK);
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
 }

 err |= comedi_check_trigger_arg_is(&cmd->convert_arg, 0);
 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);

 switch (cmd->stop_src) {
 case 132:
  err |= comedi_check_trigger_arg_min(&cmd->stop_arg, 1);
  break;
 case 131:

  if (cmd->stop_arg & ~CR_FLAGS_MASK) {
   cmd->stop_arg =
       COMBINE(cmd->stop_arg, 0, ~CR_FLAGS_MASK);
   err |= -EINVAL;
  }

  if (cmd->stop_arg & CR_FLAGS_MASK & ~CR_EDGE) {
   cmd->stop_arg =
       COMBINE(cmd->stop_arg, 0, CR_FLAGS_MASK & ~CR_EDGE);
  }
  break;
 case 129:
  err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);
  break;
 }

 if (err)
  return 3;



 if (cmd->scan_begin_src == 128) {
  arg = cmd->scan_begin_arg;

  comedi_8254_cascade_ns_to_timer(dev->pacer, &arg, cmd->flags);
  err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, arg);
 }

 if (err)
  return 4;


 if (cmd->chanlist && cmd->chanlist_len > 0)
  err |= pci224_ao_check_chanlist(dev, s, cmd);

 if (err)
  return 5;

 return 0;
}
