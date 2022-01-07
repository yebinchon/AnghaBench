
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int atomic_read (int *) ;
 int trace_count ;

__attribute__((used)) static int trace_show(struct seq_file *m, void *v)
{
 return atomic_read(&trace_count);
}
