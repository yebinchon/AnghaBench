
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* next_device; } ;
typedef TYPE_1__ SLMP_INFO ;


 int driver_version ;
 int line_info (struct seq_file*,TYPE_1__*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 TYPE_1__* synclinkmp_device_list ;

__attribute__((used)) static int synclinkmp_proc_show(struct seq_file *m, void *v)
{
 SLMP_INFO *info;

 seq_printf(m, "synclinkmp driver:%s\n", driver_version);

 info = synclinkmp_device_list;
 while( info ) {
  line_info(m, info);
  info = info->next_device;
 }
 return 0;
}
