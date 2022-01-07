
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_route_tables {int dummy; } ;
struct ni_gpct {unsigned int counter_index; TYPE_1__* counter_dev; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; int stop_arg; int chanlist_len; int scan_end_arg; int convert_arg; int scan_begin_arg; int start_arg; } ;
struct TYPE_2__ {struct ni_route_tables* routing_tables; } ;


 int CR_CHAN (int ) ;
 int EINVAL ;
 int NI_CtrGate (unsigned int) ;
 unsigned int TRIG_COUNT ;

 unsigned int TRIG_FOLLOW ;

 unsigned int TRIG_NONE ;


 int comedi_check_trigger_arg_is (int *,int ) ;
 int comedi_check_trigger_is_unique (unsigned int) ;
 int comedi_check_trigger_src (unsigned int*,unsigned int) ;
 int ni_check_trigger_arg (int ,int ,struct ni_route_tables const*) ;
 scalar_t__ ni_tio_counting_mode_registers_present (TYPE_1__*) ;

int ni_tio_cmdtest(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_cmd *cmd)
{
 struct ni_gpct *counter = s->private;
 unsigned int cidx = counter->counter_index;
 const struct ni_route_tables *routing_tables =
  counter->counter_dev->routing_tables;
 int err = 0;
 unsigned int sources;



 sources = 129 | 130 | 128;
 if (ni_tio_counting_mode_registers_present(counter->counter_dev))
  sources |= 131;
 err |= comedi_check_trigger_src(&cmd->start_src, sources);

 err |= comedi_check_trigger_src(&cmd->scan_begin_src,
     TRIG_FOLLOW | 131 | 128);
 err |= comedi_check_trigger_src(&cmd->convert_src,
     129 | 131 | 128);
 err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
 err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_NONE);

 if (err)
  return 1;



 err |= comedi_check_trigger_is_unique(cmd->start_src);
 err |= comedi_check_trigger_is_unique(cmd->scan_begin_src);
 err |= comedi_check_trigger_is_unique(cmd->convert_src);



 if (cmd->convert_src != 129 && cmd->scan_begin_src != TRIG_FOLLOW)
  err |= -EINVAL;

 if (err)
  return 2;



 switch (cmd->start_src) {
 case 129:
 case 130:
 case 128:
  err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
  break;
 case 131:
  break;
 }






 if (cmd->scan_begin_src != 131)
  err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
 else
  err |= ni_check_trigger_arg(CR_CHAN(cmd->scan_begin_arg),
         NI_CtrGate(cidx), routing_tables);

 if (cmd->convert_src != 131)
  err |= comedi_check_trigger_arg_is(&cmd->convert_arg, 0);
 else
  err |= ni_check_trigger_arg(CR_CHAN(cmd->convert_arg),
         NI_CtrGate(cidx), routing_tables);

 err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
        cmd->chanlist_len);
 err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);

 if (err)
  return 3;





 return 0;
}
