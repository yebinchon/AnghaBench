
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOTTY ;
 long openprom_ioctl (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long openprom_compat_ioctl(struct file *file, unsigned int cmd,
  unsigned long arg)
{
 long rval = -ENOTTY;





 switch (cmd) {
 case 138:
 case 130:
 case 135:
 case 129:
 case 136:
 case 142:
 case 137:
 case 134:
 case 128:
 case 140:
 case 139:
 case 141:
 case 131:
 case 132:
 case 133:
  rval = openprom_ioctl(file, cmd, arg);
  break;
 }

 return rval;
}
