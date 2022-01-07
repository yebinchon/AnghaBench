
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt_ntb_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int IDT_TEMP_HIGH ;
 int IDT_TEMP_LOW ;
 int IDT_TEMP_MAX_MDEG ;
 int IDT_TEMP_MIN_MDEG ;
 struct idt_ntb_dev* dev_get_drvdata (struct device*) ;
 int idt_write_temp (struct idt_ntb_dev*,int ,int ) ;

__attribute__((used)) static ssize_t idt_sysfs_reset_hist(struct device *dev,
        struct device_attribute *da,
        const char *buf, size_t count)
{
 struct idt_ntb_dev *ndev = dev_get_drvdata(dev);




 idt_write_temp(ndev, IDT_TEMP_LOW, IDT_TEMP_MAX_MDEG);
 idt_write_temp(ndev, IDT_TEMP_HIGH, IDT_TEMP_MIN_MDEG);

 return count;
}
