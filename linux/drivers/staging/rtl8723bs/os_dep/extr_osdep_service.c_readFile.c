
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_pos; TYPE_1__* f_op; } ;
struct TYPE_2__ {int read; } ;


 int EPERM ;
 int kernel_read (struct file*,char*,int,int *) ;

__attribute__((used)) static int readFile(struct file *fp, char *buf, int len)
{
 int rlen = 0, sum = 0;

 if (!fp->f_op || !fp->f_op->read)
  return -EPERM;

 while (sum < len) {
  rlen = kernel_read(fp, buf + sum, len - sum, &fp->f_pos);
  if (rlen > 0)
   sum += rlen;
  else if (0 != rlen)
   return rlen;
  else
   break;
 }

 return sum;

}
