
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_charger {int dummy; } ;


 int AB8500_MCH_IPT_CURLVL_REG ;
 int ab8500_charger_set_current (struct ab8500_charger*,int,int ) ;

__attribute__((used)) static int ab8500_charger_set_main_in_curr(struct ab8500_charger *di,
 int ich_in)
{
 return ab8500_charger_set_current(di, ich_in,
  AB8500_MCH_IPT_CURLVL_REG);
}
