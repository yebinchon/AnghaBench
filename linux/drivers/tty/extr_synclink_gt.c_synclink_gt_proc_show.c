
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {struct slgt_info* next_device; } ;
struct seq_file {int dummy; } ;


 int line_info (struct seq_file*,struct slgt_info*) ;
 int seq_puts (struct seq_file*,char*) ;
 struct slgt_info* slgt_device_list ;

__attribute__((used)) static int synclink_gt_proc_show(struct seq_file *m, void *v)
{
 struct slgt_info *info;

 seq_puts(m, "synclink_gt driver\n");

 info = slgt_device_list;
 while( info ) {
  line_info(m, info);
  info = info->next_device;
 }
 return 0;
}
