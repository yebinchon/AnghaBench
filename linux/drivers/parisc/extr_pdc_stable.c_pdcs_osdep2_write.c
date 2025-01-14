
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef int in ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 size_t EINVAL ;
 size_t EIO ;
 size_t EMSGSIZE ;
 size_t ENOSYS ;
 size_t EPERM ;
 scalar_t__ OS_ID_LINUX ;
 scalar_t__ PDCS_ADDR_OSD2 ;
 scalar_t__ PDC_OK ;
 int capable (int ) ;
 int memcpy (int *,char const*,size_t) ;
 int memset (int *,int ,int) ;
 scalar_t__ pdc_stable_write (scalar_t__,int **,int) ;
 scalar_t__ pdcs_osid ;
 int pdcs_size ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t pdcs_osdep2_write(struct kobject *kobj,
     struct kobj_attribute *attr,
     const char *buf, size_t count)
{
 unsigned long size;
 unsigned short i;
 u8 in[4];

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (!buf || !count)
  return -EINVAL;

 if (unlikely(pdcs_size <= 224))
  return -ENOSYS;

 if (unlikely(pdcs_osid != OS_ID_LINUX))
  return -EPERM;

 size = pdcs_size - 224;

 if (count > size)
  return -EMSGSIZE;



 for (i=0; i<count; i+=4) {
  memset(in, 0, 4);
  memcpy(in, buf+i, (count-i < 4) ? count-i : 4);
  if (unlikely(pdc_stable_write(PDCS_ADDR_OSD2 + i, &in,
     sizeof(in)) != PDC_OK))
   return -EIO;
 }

 return count;
}
