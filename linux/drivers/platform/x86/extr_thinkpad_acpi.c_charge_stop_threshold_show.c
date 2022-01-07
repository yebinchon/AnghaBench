
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int THRESHOLD_STOP ;
 int tpacpi_battery_show (int ,struct device*,char*) ;

__attribute__((used)) static ssize_t charge_stop_threshold_show(struct device *device,
    struct device_attribute *attr,
    char *buf)
{
 return tpacpi_battery_show(THRESHOLD_STOP, device, buf);
}
