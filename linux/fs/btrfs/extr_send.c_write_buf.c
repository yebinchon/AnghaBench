
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct file {int dummy; } ;
typedef int loff_t ;


 int EIO ;
 int kernel_write (struct file*,void const*,scalar_t__,int *) ;

__attribute__((used)) static int write_buf(struct file *filp, const void *buf, u32 len, loff_t *off)
{
 int ret;
 u32 pos = 0;

 while (pos < len) {
  ret = kernel_write(filp, buf + pos, len - pos, off);




  if (ret < 0)
   return ret;
  if (ret == 0) {
   return -EIO;
  }
  pos += ret;
 }

 return 0;
}
