
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_type_attribute {int (* store ) (int *,int ,char const*,size_t) ;} ;
struct mdev_type {TYPE_1__* parent; int kobj; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int stub1 (int *,int ,char const*,size_t) ;
 struct mdev_type* to_mdev_type (struct kobject*) ;
 struct mdev_type_attribute* to_mdev_type_attr (struct attribute*) ;

__attribute__((used)) static ssize_t mdev_type_attr_store(struct kobject *kobj,
          struct attribute *__attr,
          const char *buf, size_t count)
{
 struct mdev_type_attribute *attr = to_mdev_type_attr(__attr);
 struct mdev_type *type = to_mdev_type(kobj);
 ssize_t ret = -EIO;

 if (attr->store)
  ret = attr->store(&type->kobj, type->parent->dev, buf, count);
 return ret;
}
