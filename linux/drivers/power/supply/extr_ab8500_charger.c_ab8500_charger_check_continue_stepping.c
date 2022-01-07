
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vbus_drop_end; } ;
struct ab8500_charger {TYPE_1__ flags; } ;


 int AB8500_USBCH_IPT_CRNTLVL_REG ;

__attribute__((used)) static bool ab8500_charger_check_continue_stepping(struct ab8500_charger *di,
         int reg)
{
 if (reg == AB8500_USBCH_IPT_CRNTLVL_REG)
  return !di->flags.vbus_drop_end;
 else
  return 1;
}
