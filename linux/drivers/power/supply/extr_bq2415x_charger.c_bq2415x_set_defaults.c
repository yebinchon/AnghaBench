
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ resistor_sense; } ;
struct bq2415x_device {TYPE_1__ init_data; } ;


 int BQ2415X_BOOST_MODE_DISABLE ;
 int BQ2415X_CHARGER_DISABLE ;
 int BQ2415X_CHARGER_ENABLE ;
 int BQ2415X_CHARGE_TERMINATION_DISABLE ;
 int BQ2415X_CHARGE_TERMINATION_ENABLE ;
 int battery_regulation_voltage ;
 int bq2415x_exec_command (struct bq2415x_device*,int ) ;
 int bq2415x_set_default_value (struct bq2415x_device*,int ) ;
 int charge_current ;
 int current_limit ;
 int termination_current ;
 int weak_battery_voltage ;

__attribute__((used)) static int bq2415x_set_defaults(struct bq2415x_device *bq)
{
 bq2415x_exec_command(bq, BQ2415X_BOOST_MODE_DISABLE);
 bq2415x_exec_command(bq, BQ2415X_CHARGER_DISABLE);
 bq2415x_exec_command(bq, BQ2415X_CHARGE_TERMINATION_DISABLE);

 bq2415x_set_default_value(bq, current_limit);
 bq2415x_set_default_value(bq, weak_battery_voltage);
 bq2415x_set_default_value(bq, battery_regulation_voltage);

 if (bq->init_data.resistor_sense > 0) {
  bq2415x_set_default_value(bq, charge_current);
  bq2415x_set_default_value(bq, termination_current);
  bq2415x_exec_command(bq, BQ2415X_CHARGE_TERMINATION_ENABLE);
 }

 bq2415x_exec_command(bq, BQ2415X_CHARGER_ENABLE);
 return 0;
}
