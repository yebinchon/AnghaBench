
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {int kref; } ;
struct se_device {int dummy; } ;


 struct tcmu_dev* TCMU_DEV (struct se_device*) ;
 int kref_put (int *,int ) ;
 int tcmu_dev_kref_release ;

__attribute__((used)) static void tcmu_free_device(struct se_device *dev)
{
 struct tcmu_dev *udev = TCMU_DEV(dev);


 kref_put(&udev->kref, tcmu_dev_kref_release);
}
