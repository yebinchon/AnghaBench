
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int dummy; } ;
struct device {int dummy; } ;


 int IS_ERR (struct opp_table*) ;
 int _add_opp_dev_unlocked (struct device*,struct opp_table*) ;
 struct opp_table* _allocate_opp_table (struct device*,int) ;
 struct opp_table* _find_opp_table_unlocked (struct device*) ;
 struct opp_table* _managed_opp (struct device*,int) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opp_table_lock ;

__attribute__((used)) static struct opp_table *_opp_get_opp_table(struct device *dev, int index)
{
 struct opp_table *opp_table;


 mutex_lock(&opp_table_lock);

 opp_table = _find_opp_table_unlocked(dev);
 if (!IS_ERR(opp_table))
  goto unlock;

 opp_table = _managed_opp(dev, index);
 if (opp_table) {
  if (!_add_opp_dev_unlocked(dev, opp_table)) {
   dev_pm_opp_put_opp_table(opp_table);
   opp_table = ((void*)0);
  }
  goto unlock;
 }

 opp_table = _allocate_opp_table(dev, index);

unlock:
 mutex_unlock(&opp_table_lock);

 return opp_table;
}
