
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_wdt {scalar_t__ base; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION ;
 scalar_t__ WDT_CLEAR_TIMEOUT_STATUS ;
 struct aspeed_wdt* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static ssize_t access_cs0_store(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t size)
{
 struct aspeed_wdt *wdt = dev_get_drvdata(dev);
 unsigned long val;

 if (kstrtoul(buf, 10, &val))
  return -EINVAL;

 if (val)
  writel(WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION,
         wdt->base + WDT_CLEAR_TIMEOUT_STATUS);

 return size;
}
