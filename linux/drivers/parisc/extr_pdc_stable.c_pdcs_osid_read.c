
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 char* os_id_to_string (int) ;
 int pdcs_osid ;
 int sprintf (char*,char*,char*,int) ;

__attribute__((used)) static ssize_t pdcs_osid_read(struct kobject *kobj,
         struct kobj_attribute *attr, char *buf)
{
 char *out = buf;

 if (!buf)
  return -EINVAL;

 out += sprintf(out, "%s dependent data (0x%.4x)\n",
  os_id_to_string(pdcs_osid), pdcs_osid);

 return out - buf;
}
