
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int pacer; } ;
struct comedi_cmd {unsigned int convert_arg; int flags; } ;


 int comedi_8254_cascade_ns_to_timer (int ,unsigned int*,int ) ;
 int comedi_check_trigger_arg_is (unsigned int*,unsigned int) ;

__attribute__((used)) static int das1800_ai_fixup_paced_timing(struct comedi_device *dev,
      struct comedi_cmd *cmd)
{
 unsigned int arg = cmd->convert_arg;
 comedi_8254_cascade_ns_to_timer(dev->pacer, &arg, cmd->flags);
 return comedi_check_trigger_arg_is(&cmd->convert_arg, arg);
}
