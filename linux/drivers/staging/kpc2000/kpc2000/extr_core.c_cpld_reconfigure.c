
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kp2000_device {scalar_t__ sysinfo_regs_base; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ REG_CPLD_CONFIG ;
 struct kp2000_device* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int ,long*) ;
 int writeq (long,scalar_t__) ;

__attribute__((used)) static ssize_t cpld_reconfigure(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct kp2000_device *pcard = dev_get_drvdata(dev);
 long wr_val;
 int rv;

 rv = kstrtol(buf, 0, &wr_val);
 if (rv < 0)
  return rv;
 if (wr_val > 7)
  return -EINVAL;

 wr_val = wr_val << 8;
 wr_val |= 0x1;
 writeq(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
 return count;
}
