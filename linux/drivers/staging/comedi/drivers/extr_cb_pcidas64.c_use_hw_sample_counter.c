
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;


 scalar_t__ TRIG_COUNT ;
 scalar_t__ max_counter_value ;

__attribute__((used)) static int use_hw_sample_counter(struct comedi_cmd *cmd)
{

 return 0;

 if (cmd->stop_src == TRIG_COUNT && cmd->stop_arg <= max_counter_value)
  return 1;

 return 0;
}
