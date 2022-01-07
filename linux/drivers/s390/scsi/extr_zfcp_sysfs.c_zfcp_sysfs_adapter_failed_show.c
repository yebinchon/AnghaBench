
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_read (int *) ;
 int sprintf (char*,char*) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 struct zfcp_adapter* zfcp_ccw_adapter_by_cdev (struct ccw_device*) ;
 int zfcp_ccw_adapter_put (struct zfcp_adapter*) ;

__attribute__((used)) static ssize_t zfcp_sysfs_adapter_failed_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct zfcp_adapter *adapter = zfcp_ccw_adapter_by_cdev(cdev);
 int i;

 if (!adapter)
  return -ENODEV;

 if (atomic_read(&adapter->status) & ZFCP_STATUS_COMMON_ERP_FAILED)
  i = sprintf(buf, "1\n");
 else
  i = sprintf(buf, "0\n");

 zfcp_ccw_adapter_put(adapter);
 return i;
}
