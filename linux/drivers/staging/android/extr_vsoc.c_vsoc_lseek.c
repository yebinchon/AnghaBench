
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;
 int EOVERFLOW ;





 int vsoc_get_area (struct file*,int *) ;
 int vsoc_validate_filep (struct file*) ;

__attribute__((used)) static loff_t vsoc_lseek(struct file *filp, loff_t offset, int origin)
{
 ssize_t area_len = 0;
 int retval = vsoc_validate_filep(filp);

 if (retval)
  return retval;
 area_len = vsoc_get_area(filp, ((void*)0));
 switch (origin) {
 case 128:
  break;

 case 132:
  if (offset > 0 && offset + filp->f_pos < 0)
   return -EOVERFLOW;
  offset += filp->f_pos;
  break;

 case 130:
  if (offset > 0 && offset + area_len < 0)
   return -EOVERFLOW;
  offset += area_len;
  break;

 case 131:
  if (offset >= area_len)
   return -EINVAL;
  if (offset < 0)
   offset = 0;
  break;

 case 129:



  if (offset < area_len)
   offset = area_len;
  break;

 default:
  return -EINVAL;
 }

 if (offset < 0 || offset > area_len)
  return -EINVAL;
 filp->f_pos = offset;

 return offset;
}
