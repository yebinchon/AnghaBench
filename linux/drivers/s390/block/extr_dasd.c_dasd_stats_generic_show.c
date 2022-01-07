
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

int dasd_stats_generic_show(struct seq_file *m, void *v)
{
 seq_puts(m, "Statistics are not activated in this kernel\n");
 return 0;
}
