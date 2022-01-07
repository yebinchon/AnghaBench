
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_dev {scalar_t__ mm; } ;
struct TYPE_2__ {scalar_t__ mm; } ;


 long EPERM ;
 TYPE_1__* current ;

long vhost_dev_check_owner(struct vhost_dev *dev)
{

 return dev->mm == current->mm ? 0 : -EPERM;
}
