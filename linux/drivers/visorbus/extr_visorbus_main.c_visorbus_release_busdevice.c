
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int visorchannel; int debugfs_dir; int debugfs_bus_info; } ;
struct device {int dummy; } ;


 int debugfs_remove (int ) ;
 int debugfs_remove_recursive (int ) ;
 struct visor_device* dev_get_drvdata (struct device*) ;
 int kfree (struct visor_device*) ;
 int visorchannel_destroy (int ) ;

__attribute__((used)) static void visorbus_release_busdevice(struct device *xdev)
{
 struct visor_device *dev = dev_get_drvdata(xdev);

 debugfs_remove(dev->debugfs_bus_info);
 debugfs_remove_recursive(dev->debugfs_dir);
 visorchannel_destroy(dev->visorchannel);
 kfree(dev);
}
