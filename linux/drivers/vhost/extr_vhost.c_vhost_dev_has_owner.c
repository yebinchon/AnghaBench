
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_dev {int mm; } ;



bool vhost_dev_has_owner(struct vhost_dev *dev)
{
 return dev->mm;
}
