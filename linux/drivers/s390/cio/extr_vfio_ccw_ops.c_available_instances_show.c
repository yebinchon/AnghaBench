
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_ccw_private {int avail; } ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 struct vfio_ccw_private* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t available_instances_show(struct kobject *kobj,
     struct device *dev, char *buf)
{
 struct vfio_ccw_private *private = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", atomic_read(&private->avail));
}
