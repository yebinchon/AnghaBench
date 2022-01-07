
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int var; } ;
struct pxafb_info {int lcd_supply_enabled; scalar_t__ lcd_supply; TYPE_1__ fb; int (* lcd_power ) (int,int *) ;} ;


 int pr_debug (char*,char*) ;
 int pr_warn (char*,char*,int) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int stub1 (int,int *) ;

__attribute__((used)) static inline void __pxafb_lcd_power(struct pxafb_info *fbi, int on)
{
 pr_debug("pxafb: LCD power o%s\n", on ? "n" : "ff");

 if (fbi->lcd_power)
  fbi->lcd_power(on, &fbi->fb.var);

 if (fbi->lcd_supply && fbi->lcd_supply_enabled != on) {
  int ret;

  if (on)
   ret = regulator_enable(fbi->lcd_supply);
  else
   ret = regulator_disable(fbi->lcd_supply);

  if (ret < 0)
   pr_warn("Unable to %s LCD supply regulator: %d\n",
    on ? "enable" : "disable", ret);
  else
   fbi->lcd_supply_enabled = on;
 }
}
