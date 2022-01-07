
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int console_lock () ;
 int console_unlock () ;
 int file_inode (struct file*) ;
 int fixed_size_llseek (struct file*,int,int,int) ;
 int vcs_size (int ) ;

__attribute__((used)) static loff_t vcs_lseek(struct file *file, loff_t offset, int orig)
{
 int size;

 console_lock();
 size = vcs_size(file_inode(file));
 console_unlock();
 if (size < 0)
  return size;
 return fixed_size_llseek(file, offset, orig, size);
}
