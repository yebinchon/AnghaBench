
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int PF_AUTOSEARCH ;
 int pdcs_auto_read (struct kobject*,struct kobj_attribute*,char*,int ) ;

__attribute__((used)) static ssize_t pdcs_autosearch_read(struct kobject *kobj,
        struct kobj_attribute *attr, char *buf)
{
 return pdcs_auto_read(kobj, attr, buf, PF_AUTOSEARCH);
}
