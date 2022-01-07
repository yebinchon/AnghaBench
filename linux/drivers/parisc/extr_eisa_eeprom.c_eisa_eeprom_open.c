
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int EINVAL ;
 int FMODE_WRITE ;

__attribute__((used)) static int eisa_eeprom_open(struct inode *inode, struct file *file)
{
 if (file->f_mode & FMODE_WRITE)
  return -EINVAL;

 return 0;
}
