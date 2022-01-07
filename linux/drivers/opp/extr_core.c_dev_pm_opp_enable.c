
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int _opp_set_availability (struct device*,unsigned long,int) ;

int dev_pm_opp_enable(struct device *dev, unsigned long freq)
{
 return _opp_set_availability(dev, freq, 1);
}
