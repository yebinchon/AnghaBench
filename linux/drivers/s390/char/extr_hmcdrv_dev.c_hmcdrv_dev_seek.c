
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ f_pos; int f_version; int * private_data; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EINVAL ;



 int kfree (int *) ;

__attribute__((used)) static loff_t hmcdrv_dev_seek(struct file *fp, loff_t pos, int whence)
{
 switch (whence) {
 case 130:
  pos += fp->f_pos;
  break;

 case 128:
  break;





 case 129:
  if (fp->private_data) {
   kfree(fp->private_data);
   fp->private_data = ((void*)0);
  }

  break;

 default:
  return -EINVAL;
 }

 if (pos < 0)
  return -EINVAL;

 if (fp->f_pos != pos)
  ++fp->f_version;

 fp->f_pos = pos;
 return pos;
}
