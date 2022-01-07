
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_to_vme_dev (struct device*) ;
 int kfree (int ) ;

__attribute__((used)) static void vme_dev_release(struct device *dev)
{
 kfree(dev_to_vme_dev(dev));
}
