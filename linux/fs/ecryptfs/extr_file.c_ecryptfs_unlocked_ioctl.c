
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {long (* unlocked_ioctl ) (struct file*,unsigned int,unsigned long) ;} ;


 long ENOTTY ;





 struct file* ecryptfs_file_to_lower (struct file*) ;
 int file_inode (struct file*) ;
 int fsstack_copy_attr_all (int ,int ) ;
 long stub1 (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long
ecryptfs_unlocked_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 struct file *lower_file = ecryptfs_file_to_lower(file);
 long rc = -ENOTTY;

 if (!lower_file->f_op->unlocked_ioctl)
  return rc;

 switch (cmd) {
 case 132:
 case 131:
 case 129:
 case 130:
 case 128:
  rc = lower_file->f_op->unlocked_ioctl(lower_file, cmd, arg);
  fsstack_copy_attr_all(file_inode(file), file_inode(lower_file));

  return rc;
 default:
  return rc;
 }
}
