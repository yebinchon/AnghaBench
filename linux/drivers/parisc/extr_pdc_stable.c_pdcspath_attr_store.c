
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdcspath_entry {int dummy; } ;
struct pdcspath_attribute {int (* store ) (struct pdcspath_entry*,char const*,size_t) ;} ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int capable (int ) ;
 int stub1 (struct pdcspath_entry*,char const*,size_t) ;
 struct pdcspath_attribute* to_pdcspath_attribute (struct attribute*) ;
 struct pdcspath_entry* to_pdcspath_entry (struct kobject*) ;

__attribute__((used)) static ssize_t
pdcspath_attr_store(struct kobject *kobj, struct attribute *attr,
   const char *buf, size_t count)
{
 struct pdcspath_entry *entry = to_pdcspath_entry(kobj);
 struct pdcspath_attribute *pdcs_attr = to_pdcspath_attribute(attr);
 ssize_t ret = 0;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (pdcs_attr->store)
  ret = pdcs_attr->store(entry, buf, count);

 return ret;
}
