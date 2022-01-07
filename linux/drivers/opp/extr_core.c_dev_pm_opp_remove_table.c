
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int _dev_pm_opp_find_and_remove_table (struct device*) ;

void dev_pm_opp_remove_table(struct device *dev)
{
 _dev_pm_opp_find_and_remove_table(dev);
}
