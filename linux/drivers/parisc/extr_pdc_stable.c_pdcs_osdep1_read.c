
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
 int PDCS_ADDR_OSD1 ;
 scalar_t__ PDC_OK ;
 scalar_t__ pdc_stable_read (int ,int**,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pdcs_osdep1_read(struct kobject *kobj,
    struct kobj_attribute *attr, char *buf)
{
 char *out = buf;
 u32 result[4];

 if (!buf)
  return -EINVAL;

 if (pdc_stable_read(PDCS_ADDR_OSD1, &result, sizeof(result)) != PDC_OK)
  return -EIO;

 out += sprintf(out, "0x%.8x\n", result[0]);
 out += sprintf(out, "0x%.8x\n", result[1]);
 out += sprintf(out, "0x%.8x\n", result[2]);
 out += sprintf(out, "0x%.8x\n", result[3]);

 return out - buf;
}
