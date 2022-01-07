
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msg_group_t {int dummy; } ;
struct kobject {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int message_store_helper (char const*,size_t,struct msg_group_t*) ;
 struct msg_group_t* spk_find_msg_group (int ) ;

__attribute__((used)) static ssize_t message_store(struct kobject *kobj, struct kobj_attribute *attr,
        const char *buf, size_t count)
{
 struct msg_group_t *group = spk_find_msg_group(attr->attr.name);

 if (WARN_ON(!group))
  return -EINVAL;

 return message_store_helper(buf, count, group);
}
