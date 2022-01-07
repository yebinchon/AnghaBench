
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_opp_supply_data {scalar_t__ num_vdd_table; int * vdd_table; } ;
struct device {int dummy; } ;


 int kfree (int *) ;

__attribute__((used)) static void _free_optimized_voltages(struct device *dev,
         struct ti_opp_supply_data *data)
{
 kfree(data->vdd_table);
 data->vdd_table = ((void*)0);
 data->num_vdd_table = 0;
}
