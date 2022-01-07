
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swoc_info {int LinuxVer; int LinuxSKU; int rev; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device const*,char*,int ) ;

__attribute__((used)) static void debug_swoc(const struct device *dev, struct swoc_info *swocInfo)
{
 dev_dbg(dev, "SWIMS: SWoC Rev: %02d\n", swocInfo->rev);
 dev_dbg(dev, "SWIMS: Linux SKU: %04X\n", swocInfo->LinuxSKU);
 dev_dbg(dev, "SWIMS: Linux Version: %04X\n", swocInfo->LinuxVer);
}
