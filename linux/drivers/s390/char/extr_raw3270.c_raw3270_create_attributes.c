
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct raw3270 {TYPE_2__* cdev; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int raw3270_attr_group ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int raw3270_create_attributes(struct raw3270 *rp)
{
 return sysfs_create_group(&rp->cdev->dev.kobj, &raw3270_attr_group);
}
