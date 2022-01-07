
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IOP_WDTCR_DIS_ARM ;
 scalar_t__ IOP_WDTCR_EN_ARM ;

__attribute__((used)) static int wdt_supports_disable(void)
{
 int can_disable;

 if (IOP_WDTCR_EN_ARM != IOP_WDTCR_DIS_ARM)
  can_disable = 1;
 else
  can_disable = 0;

 return can_disable;
}
