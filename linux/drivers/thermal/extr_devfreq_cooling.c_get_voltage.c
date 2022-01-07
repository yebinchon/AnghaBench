
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct devfreq {TYPE_1__ dev; } ;
struct dev_pm_opp {int dummy; } ;


 int ERANGE ;
 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 int PTR_ERR (struct dev_pm_opp*) ;
 int dev_err_ratelimited (struct device*,char*,unsigned long,...) ;
 struct dev_pm_opp* dev_pm_opp_find_freq_exact (struct device*,unsigned long,int) ;
 int dev_pm_opp_get_voltage (struct dev_pm_opp*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;

__attribute__((used)) static unsigned long get_voltage(struct devfreq *df, unsigned long freq)
{
 struct device *dev = df->dev.parent;
 unsigned long voltage;
 struct dev_pm_opp *opp;

 opp = dev_pm_opp_find_freq_exact(dev, freq, 1);
 if (PTR_ERR(opp) == -ERANGE)
  opp = dev_pm_opp_find_freq_exact(dev, freq, 0);

 if (IS_ERR(opp)) {
  dev_err_ratelimited(dev, "Failed to find OPP for frequency %lu: %ld\n",
        freq, PTR_ERR(opp));
  return 0;
 }

 voltage = dev_pm_opp_get_voltage(opp) / 1000;
 dev_pm_opp_put(opp);

 if (voltage == 0) {
  dev_err_ratelimited(dev,
        "Failed to get voltage for frequency %lu\n",
        freq);
 }

 return voltage;
}
