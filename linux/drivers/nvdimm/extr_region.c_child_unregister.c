
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ND_SYNC ;
 int nd_device_unregister (struct device*,int ) ;

__attribute__((used)) static int child_unregister(struct device *dev, void *data)
{
 nd_device_unregister(dev, ND_SYNC);
 return 0;
}
