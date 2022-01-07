
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int tcm_loop_show_info(struct seq_file *m, struct Scsi_Host *host)
{
 seq_puts(m, "tcm_loop_proc_info()\n");
 return 0;
}
