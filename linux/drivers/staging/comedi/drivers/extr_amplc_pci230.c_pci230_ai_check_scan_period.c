
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {unsigned int chanlist_len; unsigned int convert_arg; unsigned int scan_begin_arg; } ;


 unsigned int UINT_MAX ;

__attribute__((used)) static int pci230_ai_check_scan_period(struct comedi_cmd *cmd)
{
 unsigned int min_scan_period, chanlist_len;
 int err = 0;

 chanlist_len = cmd->chanlist_len;
 if (cmd->chanlist_len == 0)
  chanlist_len = 1;

 min_scan_period = chanlist_len * cmd->convert_arg;
 if (min_scan_period < chanlist_len ||
     min_scan_period < cmd->convert_arg) {

  min_scan_period = UINT_MAX;
  err++;
 }
 if (cmd->scan_begin_arg < min_scan_period) {
  cmd->scan_begin_arg = min_scan_period;
  err++;
 }

 return !err;
}
