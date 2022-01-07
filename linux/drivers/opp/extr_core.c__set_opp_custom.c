
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct opp_table {int regulator_count; int (* set_opp ) (struct dev_pm_set_opp_data*) ;int clk; int regulators; struct dev_pm_set_opp_data* set_opp_data; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned long rate; int supplies; } ;
struct TYPE_3__ {unsigned long rate; int supplies; } ;
struct dev_pm_set_opp_data {int regulator_count; TYPE_2__ new_opp; TYPE_1__ old_opp; struct device* dev; int clk; int regulators; } ;
struct dev_pm_opp_supply {int dummy; } ;


 int memcpy (int ,struct dev_pm_opp_supply*,int) ;
 int memset (int ,int ,int) ;
 int stub1 (struct dev_pm_set_opp_data*) ;

__attribute__((used)) static int _set_opp_custom(const struct opp_table *opp_table,
      struct device *dev, unsigned long old_freq,
      unsigned long freq,
      struct dev_pm_opp_supply *old_supply,
      struct dev_pm_opp_supply *new_supply)
{
 struct dev_pm_set_opp_data *data;
 int size;

 data = opp_table->set_opp_data;
 data->regulators = opp_table->regulators;
 data->regulator_count = opp_table->regulator_count;
 data->clk = opp_table->clk;
 data->dev = dev;

 data->old_opp.rate = old_freq;
 size = sizeof(*old_supply) * opp_table->regulator_count;
 if (!old_supply)
  memset(data->old_opp.supplies, 0, size);
 else
  memcpy(data->old_opp.supplies, old_supply, size);

 data->new_opp.rate = freq;
 memcpy(data->new_opp.supplies, new_supply, size);

 return opp_table->set_opp(data);
}
