
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {scalar_t__ intval; } ;
typedef int u8 ;
struct lp8788_charger {int lp; } ;


 int LP8788_CHG_VTERM ;
 int LP8788_CHG_VTERM_M ;
 scalar_t__ LP8788_VTERM_MIN ;
 int LP8788_VTERM_STEP ;
 int lp8788_read_byte (int ,int ,int*) ;

__attribute__((used)) static int lp8788_get_charging_termination_voltage(struct lp8788_charger *pchg,
    union power_supply_propval *val)
{
 u8 read;

 lp8788_read_byte(pchg->lp, LP8788_CHG_VTERM, &read);
 read &= LP8788_CHG_VTERM_M;
 val->intval = LP8788_VTERM_MIN + LP8788_VTERM_STEP * read;

 return 0;
}
