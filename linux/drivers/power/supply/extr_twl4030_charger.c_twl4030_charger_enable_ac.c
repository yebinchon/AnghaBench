
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_bci {scalar_t__ ac_mode; } ;


 scalar_t__ CHARGE_OFF ;
 int TWL4030_BCIAUTOAC ;
 int twl4030_clear_set_boot_bci (int ,int ) ;

__attribute__((used)) static int twl4030_charger_enable_ac(struct twl4030_bci *bci, bool enable)
{
 int ret;

 if (bci->ac_mode == CHARGE_OFF)
  enable = 0;

 if (enable)
  ret = twl4030_clear_set_boot_bci(0, TWL4030_BCIAUTOAC);
 else
  ret = twl4030_clear_set_boot_bci(TWL4030_BCIAUTOAC, 0);

 return ret;
}
