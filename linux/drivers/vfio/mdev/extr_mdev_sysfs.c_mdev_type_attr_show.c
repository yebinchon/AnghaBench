
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_type_attribute {int (* show ) (struct kobject*,int ,char*) ;} ;
struct mdev_type {TYPE_1__* parent; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int stub1 (struct kobject*,int ,char*) ;
 struct mdev_type* to_mdev_type (struct kobject*) ;
 struct mdev_type_attribute* to_mdev_type_attr (struct attribute*) ;

__attribute__((used)) static ssize_t mdev_type_attr_show(struct kobject *kobj,
         struct attribute *__attr, char *buf)
{
 struct mdev_type_attribute *attr = to_mdev_type_attr(__attr);
 struct mdev_type *type = to_mdev_type(kobj);
 ssize_t ret = -EIO;

 if (attr->show)
  ret = attr->show(kobj, type->parent->dev, buf);
 return ret;
}
