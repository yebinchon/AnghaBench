
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int TAPE_MINORS_PER_DEV ;

__attribute__((used)) static void *tape_proc_start(struct seq_file *m, loff_t *pos)
{
 if (*pos >= 256 / TAPE_MINORS_PER_DEV)
  return ((void*)0);
 return (void *)((unsigned long) *pos + 1);
}
