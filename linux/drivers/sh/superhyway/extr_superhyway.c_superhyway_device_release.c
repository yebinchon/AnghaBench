
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superhyway_device {struct superhyway_device* resource; } ;
struct device {int dummy; } ;


 int kfree (struct superhyway_device*) ;
 struct superhyway_device* to_superhyway_device (struct device*) ;

__attribute__((used)) static void superhyway_device_release(struct device *dev)
{
 struct superhyway_device *sdev = to_superhyway_device(dev);

 kfree(sdev->resource);
 kfree(sdev);
}
