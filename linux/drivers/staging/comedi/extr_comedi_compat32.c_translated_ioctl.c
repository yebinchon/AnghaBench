
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {int (* unlocked_ioctl ) (struct file*,unsigned int,unsigned long) ;} ;


 int ENOTTY ;
 int stub1 (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static int translated_ioctl(struct file *file, unsigned int cmd,
       unsigned long arg)
{
 if (file->f_op->unlocked_ioctl)
  return file->f_op->unlocked_ioctl(file, cmd, arg);

 return -ENOTTY;
}
