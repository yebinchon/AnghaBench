
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int FSM_ZONE ;
 int rsi_dbg (int ,char*,int ) ;
 int rsi_zone_enabled ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int rsi_debug_zone_read(struct seq_file *seq, void *data)
{
 rsi_dbg(FSM_ZONE, "%x: rsi_enabled zone", rsi_zone_enabled);
 seq_printf(seq, "The zones available are %#x\n",
     rsi_zone_enabled);
 return 0;
}
