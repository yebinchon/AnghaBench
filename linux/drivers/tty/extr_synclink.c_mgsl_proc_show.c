
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct mgsl_struct {struct mgsl_struct* next_device; } ;


 int driver_version ;
 int line_info (struct seq_file*,struct mgsl_struct*) ;
 struct mgsl_struct* mgsl_device_list ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int mgsl_proc_show(struct seq_file *m, void *v)
{
 struct mgsl_struct *info;

 seq_printf(m, "synclink driver:%s\n", driver_version);

 info = mgsl_device_list;
 while( info ) {
  line_info(m, info);
  info = info->next_device;
 }
 return 0;
}
