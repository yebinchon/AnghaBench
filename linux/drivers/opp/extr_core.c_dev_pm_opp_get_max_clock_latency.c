
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {unsigned long clock_latency_ns_max; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct opp_table*) ;
 struct opp_table* _find_opp_table (struct device*) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;

unsigned long dev_pm_opp_get_max_clock_latency(struct device *dev)
{
 struct opp_table *opp_table;
 unsigned long clock_latency_ns;

 opp_table = _find_opp_table(dev);
 if (IS_ERR(opp_table))
  return 0;

 clock_latency_ns = opp_table->clock_latency_ns_max;

 dev_pm_opp_put_opp_table(opp_table);

 return clock_latency_ns;
}
