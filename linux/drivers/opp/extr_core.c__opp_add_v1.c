
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opp_table {long voltage_tolerance_v1; int head; } ;
struct device {int dummy; } ;
struct dev_pm_opp {unsigned long rate; int available; int dynamic; TYPE_1__* supplies; } ;
struct TYPE_2__ {long u_volt; long u_volt_min; long u_volt_max; } ;


 int EBUSY ;
 int ENOMEM ;
 int OPP_EVENT_ADD ;
 int _opp_add (struct device*,struct dev_pm_opp*,struct opp_table*,int) ;
 struct dev_pm_opp* _opp_allocate (struct opp_table*) ;
 int _opp_free (struct dev_pm_opp*) ;
 int blocking_notifier_call_chain (int *,int ,struct dev_pm_opp*) ;

int _opp_add_v1(struct opp_table *opp_table, struct device *dev,
  unsigned long freq, long u_volt, bool dynamic)
{
 struct dev_pm_opp *new_opp;
 unsigned long tol;
 int ret;

 new_opp = _opp_allocate(opp_table);
 if (!new_opp)
  return -ENOMEM;


 new_opp->rate = freq;
 tol = u_volt * opp_table->voltage_tolerance_v1 / 100;
 new_opp->supplies[0].u_volt = u_volt;
 new_opp->supplies[0].u_volt_min = u_volt - tol;
 new_opp->supplies[0].u_volt_max = u_volt + tol;
 new_opp->available = 1;
 new_opp->dynamic = dynamic;

 ret = _opp_add(dev, new_opp, opp_table, 0);
 if (ret) {

  if (ret == -EBUSY)
   ret = 0;
  goto free_opp;
 }





 blocking_notifier_call_chain(&opp_table->head, OPP_EVENT_ADD, new_opp);
 return 0;

free_opp:
 _opp_free(new_opp);

 return ret;
}
