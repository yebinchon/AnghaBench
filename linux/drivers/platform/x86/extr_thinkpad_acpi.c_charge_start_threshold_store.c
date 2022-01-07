
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int THRESHOLD_START ;
 int tpacpi_battery_store (int ,struct device*,char const*,size_t) ;

__attribute__((used)) static ssize_t charge_start_threshold_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 return tpacpi_battery_store(THRESHOLD_START, dev, buf, count);
}
