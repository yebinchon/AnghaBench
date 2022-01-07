
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swoc_info {int LinuxSKU; } ;



__attribute__((used)) static bool containsFullLinuxPackage(struct swoc_info *swocInfo)
{
 if ((swocInfo->LinuxSKU >= 0x2100 && swocInfo->LinuxSKU <= 0x2FFF) ||
    (swocInfo->LinuxSKU >= 0x7100 && swocInfo->LinuxSKU <= 0x7FFF))
  return 1;
 else
  return 0;
}
