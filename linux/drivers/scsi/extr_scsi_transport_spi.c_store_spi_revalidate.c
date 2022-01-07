
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int child_iter ;
 int device_for_each_child (int *,int *,int ) ;
 struct scsi_target* transport_class_to_starget (struct device*) ;

__attribute__((used)) static ssize_t
store_spi_revalidate(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct scsi_target *starget = transport_class_to_starget(dev);

 device_for_each_child(&starget->dev, ((void*)0), child_iter);
 return count;
}
