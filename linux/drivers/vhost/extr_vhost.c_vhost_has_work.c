
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_dev {int work_list; } ;


 int llist_empty (int *) ;

bool vhost_has_work(struct vhost_dev *dev)
{
 return !llist_empty(&dev->work_list);
}
