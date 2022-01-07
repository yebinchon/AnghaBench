
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int convert_arg; } ;


 int TIMER_BASE ;

__attribute__((used)) static u32 ai_convert_counter_6xxx(const struct comedi_device *dev,
       const struct comedi_cmd *cmd)
{

 return cmd->convert_arg / TIMER_BASE - 3;
}
