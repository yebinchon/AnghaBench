
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_mode; TYPE_1__* private_data; } ;
struct TYPE_2__ {int * current_node; } ;
typedef TYPE_1__ DATA ;


 long EBADF ;
 long EINVAL ;
 long EPERM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 long openprom_bsd_ioctl (struct file*,unsigned int,unsigned long) ;
 long openprom_sunos_ioctl (struct file*,unsigned int,unsigned long,int *) ;
 int * options_node ;

__attribute__((used)) static long openprom_ioctl(struct file * file,
      unsigned int cmd, unsigned long arg)
{
 DATA *data = file->private_data;

 switch (cmd) {
 case 138:
 case 135:
  if ((file->f_mode & FMODE_READ) == 0)
   return -EPERM;
  return openprom_sunos_ioctl(file, cmd, arg,
         options_node);

 case 130:
 case 129:
  if ((file->f_mode & FMODE_WRITE) == 0)
   return -EPERM;
  return openprom_sunos_ioctl(file, cmd, arg,
         options_node);

 case 136:
 case 142:
 case 137:
 case 134:
  if ((file->f_mode & FMODE_READ) == 0)
   return -EPERM;
  return openprom_sunos_ioctl(file, cmd, arg,
         data->current_node);

 case 128:
 case 140:
 case 139:
 case 141:
 case 131:
 case 132:
 case 133:
  if ((file->f_mode & FMODE_READ) == 0)
   return -EPERM;
  return openprom_sunos_ioctl(file, cmd, arg, ((void*)0));

 case 148:
 case 144:
 case 145:
 case 146:
 case 147:
  if ((file->f_mode & FMODE_READ) == 0)
   return -EBADF;
  return openprom_bsd_ioctl(file,cmd,arg);

 case 143:
  if ((file->f_mode & FMODE_WRITE) == 0)
   return -EBADF;
  return openprom_bsd_ioctl(file,cmd,arg);

 default:
  return -EINVAL;
 };
}
