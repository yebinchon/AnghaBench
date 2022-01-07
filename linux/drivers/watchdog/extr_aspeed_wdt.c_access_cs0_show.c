
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_wdt {scalar_t__ base; } ;
typedef int ssize_t ;


 scalar_t__ WDT_TIMEOUT_STATUS ;
 int WDT_TIMEOUT_STATUS_BOOT_SECONDARY ;
 struct aspeed_wdt* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t access_cs0_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct aspeed_wdt *wdt = dev_get_drvdata(dev);
 u32 status = readl(wdt->base + WDT_TIMEOUT_STATUS);

 return sprintf(buf, "%u\n",
        !(status & WDT_TIMEOUT_STATUS_BOOT_SECONDARY));
}
