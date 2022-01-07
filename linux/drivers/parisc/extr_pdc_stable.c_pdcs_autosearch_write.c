
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int PF_AUTOSEARCH ;
 int pdcs_auto_write (struct kobject*,struct kobj_attribute*,char const*,size_t,int ) ;

__attribute__((used)) static ssize_t pdcs_autosearch_write(struct kobject *kobj,
         struct kobj_attribute *attr,
         const char *buf, size_t count)
{
 return pdcs_auto_write(kobj, attr, buf, count, PF_AUTOSEARCH);
}
