
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct opp_table {int regulator_count; struct dev_pm_set_opp_data* set_opp_data; int regulators; } ;
struct TYPE_4__ {void* supplies; } ;
struct TYPE_3__ {void* supplies; } ;
struct dev_pm_set_opp_data {TYPE_2__ old_opp; TYPE_1__ new_opp; } ;
struct dev_pm_opp_supply {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 struct dev_pm_set_opp_data* kzalloc (int,int ) ;

__attribute__((used)) static int _allocate_set_opp_data(struct opp_table *opp_table)
{
 struct dev_pm_set_opp_data *data;
 int len, count = opp_table->regulator_count;

 if (WARN_ON(!opp_table->regulators))
  return -EINVAL;


 len = sizeof(*data);


 len += 2 * sizeof(struct dev_pm_opp_supply) * count;

 data = kzalloc(len, GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->old_opp.supplies = (void *)(data + 1);
 data->new_opp.supplies = data->old_opp.supplies + count;

 opp_table->set_opp_data = data;

 return 0;
}
