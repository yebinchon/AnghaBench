
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct powertec_info {int info; scalar_t__ term_ctl; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 char* VERSION ;
 int fas216_print_devices (int *,struct seq_file*) ;
 int fas216_print_host (int *,struct seq_file*) ;
 int fas216_print_stats (int *,struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int powertecscsi_show_info(struct seq_file *m, struct Scsi_Host *host)
{
 struct powertec_info *info;

 info = (struct powertec_info *)host->hostdata;

 seq_printf(m, "PowerTec SCSI driver v%s\n", VERSION);
 fas216_print_host(&info->info, m);
 seq_printf(m, "Term    : o%s\n",
   info->term_ctl ? "n" : "ff");

 fas216_print_stats(&info->info, m);
 fas216_print_devices(&info->info, m);
 return 0;
}
