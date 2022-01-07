
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_charger {int dummy; } ;


 int AB8500_CH_OPT_CRNTLVL_REG ;
 int ab8500_charger_set_current (struct ab8500_charger*,int,int ) ;

__attribute__((used)) static int ab8500_charger_set_output_curr(struct ab8500_charger *di,
 int ich_out)
{
 return ab8500_charger_set_current(di, ich_out,
  AB8500_CH_OPT_CRNTLVL_REG);
}
