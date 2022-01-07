
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int result ;


 int EINVAL ;
 int EIO ;
 int PDCS_ADDR_FSIZ ;
 scalar_t__ PDC_OK ;
 scalar_t__ pdc_stable_read (int ,int*,int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t pdcs_fastsize_read(struct kobject *kobj,
      struct kobj_attribute *attr, char *buf)
{
 char *out = buf;
 u32 result;

 if (!buf)
  return -EINVAL;


 if (pdc_stable_read(PDCS_ADDR_FSIZ, &result, sizeof(result)) != PDC_OK)
  return -EIO;

 if ((result & 0x0F) < 0x0E)
  out += sprintf(out, "%d kB", (1<<(result & 0x0F))*256);
 else
  out += sprintf(out, "All");
 out += sprintf(out, "\n");

 return out - buf;
}
