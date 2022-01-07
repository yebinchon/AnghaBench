
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int lock; } ;
struct opp_device {int dummy; } ;
struct device {int dummy; } ;


 struct opp_device* _add_opp_dev_unlocked (struct device const*,struct opp_table*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct opp_device *_add_opp_dev(const struct device *dev,
    struct opp_table *opp_table)
{
 struct opp_device *opp_dev;

 mutex_lock(&opp_table->lock);
 opp_dev = _add_opp_dev_unlocked(dev, opp_table);
 mutex_unlock(&opp_table->lock);

 return opp_dev;
}
