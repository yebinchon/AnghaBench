
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int EINVAL ;
 int no_seek_end_llseek (struct file*,int,int) ;

__attribute__((used)) static loff_t dev_mem_seek(struct file *file, loff_t offset, int orig)
{

 if (offset % 4)
  return -EINVAL;

 return no_seek_end_llseek(file, offset, orig);
}
