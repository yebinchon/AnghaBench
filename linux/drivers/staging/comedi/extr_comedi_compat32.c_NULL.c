
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
 int ENOIOCTLCMD ;
 int compat_chaninfo (struct file*,unsigned long) ;
 int compat_cmd (struct file*,unsigned long) ;
 int compat_cmdtest (struct file*,unsigned long) ;
 int compat_insn (struct file*,unsigned long) ;
 int compat_insnlist (struct file*,unsigned long) ;
 scalar_t__ compat_ptr (unsigned long) ;
 int compat_rangeinfo (struct file*,unsigned long) ;
 int translated_ioctl (struct file*,unsigned int,unsigned long) ;

long comedi_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 int rc;

 switch (cmd) {
 case 135:
 case 134:
 case 129:
 case 138:
 case 137:

  arg = (unsigned long)compat_ptr(arg);
  rc = translated_ioctl(file, cmd, arg);
  break;
 case 133:
 case 128:
 case 136:
 case 132:
 case 131:
 case 130:

  rc = translated_ioctl(file, cmd, arg);
  break;
 case 144:
  rc = compat_chaninfo(file, arg);
  break;
 case 139:
  rc = compat_rangeinfo(file, arg);
  break;
 case 143:
  rc = compat_cmd(file, arg);
  break;
 case 142:
  rc = compat_cmdtest(file, arg);
  break;
 case 140:
  rc = compat_insnlist(file, arg);
  break;
 case 141:
  rc = compat_insn(file, arg);
  break;
 default:
  rc = -ENOIOCTLCMD;
  break;
 }
 return rc;
}
