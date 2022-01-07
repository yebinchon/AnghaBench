
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport {int dummy; } ;
struct device {int parent; } ;


 struct fc_rport* dev_to_rport (struct device*) ;
 int kfree (struct fc_rport*) ;
 int put_device (int ) ;

__attribute__((used)) static void fc_rport_dev_release(struct device *dev)
{
 struct fc_rport *rport = dev_to_rport(dev);
 put_device(dev->parent);
 kfree(rport);
}
