
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {int host_resets; int bus_resets; int aborts; int disconnects; int miscs; int writes; int reads; int fins; int removes; int queues; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;
typedef TYPE_2__ FAS216_Info ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void fas216_print_stats(FAS216_Info *info, struct seq_file *m)
{
 seq_printf(m, "\n"
   "Command Statistics:\n"
   " Queued     : %u\n"
   " Issued     : %u\n"
   " Completed  : %u\n"
   " Reads      : %u\n"
   " Writes     : %u\n"
   " Others     : %u\n"
   " Disconnects: %u\n"
   " Aborts     : %u\n"
   " Bus resets : %u\n"
   " Host resets: %u\n",
   info->stats.queues, info->stats.removes,
   info->stats.fins, info->stats.reads,
   info->stats.writes, info->stats.miscs,
   info->stats.disconnects, info->stats.aborts,
   info->stats.bus_resets, info->stats.host_resets);
}
