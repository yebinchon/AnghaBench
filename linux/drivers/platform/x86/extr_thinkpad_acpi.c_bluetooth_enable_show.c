
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TPACPI_RFK_BLUETOOTH_SW_ID ;
 int tpacpi_rfk_sysfs_enable_show (int ,struct device_attribute*,char*) ;

__attribute__((used)) static ssize_t bluetooth_enable_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 return tpacpi_rfk_sysfs_enable_show(TPACPI_RFK_BLUETOOTH_SW_ID,
   attr, buf);
}
