
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {scalar_t__ scan_begin_src; } ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 int MODE_SINGLE_CHAN ;
 scalar_t__ TRIG_FOLLOW ;

__attribute__((used)) static bool labpc_use_continuous_mode(const struct comedi_cmd *cmd,
          enum scan_mode mode)
{
 if (mode == MODE_SINGLE_CHAN || cmd->scan_begin_src == TRIG_FOLLOW)
  return 1;

 return 0;
}
