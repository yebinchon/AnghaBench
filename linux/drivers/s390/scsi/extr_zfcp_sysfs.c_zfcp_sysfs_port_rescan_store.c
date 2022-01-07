
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int scan_work; int work_queue; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int flush_delayed_work (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 struct zfcp_adapter* zfcp_ccw_adapter_by_cdev (struct ccw_device*) ;
 int zfcp_ccw_adapter_put (struct zfcp_adapter*) ;

__attribute__((used)) static ssize_t zfcp_sysfs_port_rescan_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct zfcp_adapter *adapter = zfcp_ccw_adapter_by_cdev(cdev);

 if (!adapter)
  return -ENODEV;






 queue_delayed_work(adapter->work_queue, &adapter->scan_work, 0);
 flush_delayed_work(&adapter->scan_work);
 zfcp_ccw_adapter_put(adapter);

 return (ssize_t) count;
}
