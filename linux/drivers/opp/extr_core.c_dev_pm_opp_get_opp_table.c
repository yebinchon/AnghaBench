
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int dummy; } ;
struct device {int dummy; } ;


 struct opp_table* _opp_get_opp_table (struct device*,int ) ;

struct opp_table *dev_pm_opp_get_opp_table(struct device *dev)
{
 return _opp_get_opp_table(dev, 0);
}
