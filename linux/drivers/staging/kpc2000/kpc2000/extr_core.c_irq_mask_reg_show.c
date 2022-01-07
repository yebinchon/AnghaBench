
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kp2000_device {scalar_t__ sysinfo_regs_base; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ REG_INTERRUPT_MASK ;
 struct kp2000_device* dev_get_drvdata (struct device*) ;
 int readq (scalar_t__) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t irq_mask_reg_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct kp2000_device *pcard = dev_get_drvdata(dev);
 u64 val;

 val = readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
 return sprintf(buf, "%016llx\n", val);
}
