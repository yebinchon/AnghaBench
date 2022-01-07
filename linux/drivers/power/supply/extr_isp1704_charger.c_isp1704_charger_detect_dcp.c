
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1704_charger {int dummy; } ;


 scalar_t__ POWER_SUPPLY_TYPE_USB_DCP ;
 scalar_t__ isp1704_charger_detect (struct isp1704_charger*) ;
 scalar_t__ isp1704_charger_type (struct isp1704_charger*) ;

__attribute__((used)) static inline int isp1704_charger_detect_dcp(struct isp1704_charger *isp)
{
 if (isp1704_charger_detect(isp) &&
   isp1704_charger_type(isp) == POWER_SUPPLY_TYPE_USB_DCP)
  return 1;
 else
  return 0;
}
