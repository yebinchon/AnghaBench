
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; } ;
typedef int loff_t ;


 int ESPIPE ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int PAGE_SIZE ;
 int no_seek_end_llseek (struct file*,int,int) ;

__attribute__((used)) static loff_t ur_llseek(struct file *file, loff_t offset, int whence)
{
 if ((file->f_flags & O_ACCMODE) != O_RDONLY)
  return -ESPIPE;
 if (offset % PAGE_SIZE)
  return -ESPIPE;
 return no_seek_end_llseek(file, offset, whence);
}
