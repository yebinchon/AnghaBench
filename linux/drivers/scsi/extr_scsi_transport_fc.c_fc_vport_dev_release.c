
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {int dummy; } ;
struct device {int parent; } ;


 struct fc_vport* dev_to_vport (struct device*) ;
 int kfree (struct fc_vport*) ;
 int put_device (int ) ;

__attribute__((used)) static void fc_vport_dev_release(struct device *dev)
{
 struct fc_vport *vport = dev_to_vport(dev);
 put_device(dev->parent);
 kfree(vport);
}
