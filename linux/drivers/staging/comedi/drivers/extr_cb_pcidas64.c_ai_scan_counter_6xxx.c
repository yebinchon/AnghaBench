
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int scan_begin_src; int scan_begin_arg; int convert_arg; int chanlist_len; } ;


 int TIMER_BASE ;



__attribute__((used)) static u32 ai_scan_counter_6xxx(struct comedi_device *dev,
    struct comedi_cmd *cmd)
{
 u32 count;


 switch (cmd->scan_begin_src) {
 case 128:
  count = (cmd->scan_begin_arg -
    (cmd->convert_arg * (cmd->chanlist_len - 1))) /
   TIMER_BASE;
  break;
 case 129:
  count = cmd->convert_arg / TIMER_BASE;
  break;
 default:
  return 0;
 }
 return count - 3;
}
