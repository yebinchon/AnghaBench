
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct idt_ntb_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum idt_temp_val { ____Placeholder_idt_temp_val } idt_temp_val ;


 struct idt_ntb_dev* dev_get_drvdata (struct device*) ;
 int idt_read_temp (struct idt_ntb_dev*,int,long*) ;
 int sprintf (char*,char*,long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t idt_sysfs_show_temp(struct device *dev,
       struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct idt_ntb_dev *ndev = dev_get_drvdata(dev);
 enum idt_temp_val type = attr->index;
 long mdeg;

 idt_read_temp(ndev, type, &mdeg);
 return sprintf(buf, "%ld\n", mdeg);
}
