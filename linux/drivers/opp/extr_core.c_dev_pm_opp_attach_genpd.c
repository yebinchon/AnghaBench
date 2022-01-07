
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int required_opp_count; int genpd_virt_dev_lock; struct device** genpd_virt_devs; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 struct opp_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int _opp_detach_genpd (struct opp_table*) ;
 int dev_err (struct device*,char*,...) ;
 struct device* dev_pm_domain_attach_by_name (struct device*,char const*) ;
 struct opp_table* dev_pm_opp_get_opp_table (struct device*) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;
 struct device** kcalloc (int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct opp_table *dev_pm_opp_attach_genpd(struct device *dev,
  const char **names, struct device ***virt_devs)
{
 struct opp_table *opp_table;
 struct device *virt_dev;
 int index = 0, ret = -EINVAL;
 const char **name = names;

 opp_table = dev_pm_opp_get_opp_table(dev);
 if (!opp_table)
  return ERR_PTR(-ENOMEM);






 if (!opp_table->required_opp_count) {
  ret = -EPROBE_DEFER;
  goto put_table;
 }

 mutex_lock(&opp_table->genpd_virt_dev_lock);

 opp_table->genpd_virt_devs = kcalloc(opp_table->required_opp_count,
          sizeof(*opp_table->genpd_virt_devs),
          GFP_KERNEL);
 if (!opp_table->genpd_virt_devs)
  goto unlock;

 while (*name) {
  if (index >= opp_table->required_opp_count) {
   dev_err(dev, "Index can't be greater than required-opp-count - 1, %s (%d : %d)\n",
    *name, opp_table->required_opp_count, index);
   goto err;
  }

  if (opp_table->genpd_virt_devs[index]) {
   dev_err(dev, "Genpd virtual device already set %s\n",
    *name);
   goto err;
  }

  virt_dev = dev_pm_domain_attach_by_name(dev, *name);
  if (IS_ERR(virt_dev)) {
   ret = PTR_ERR(virt_dev);
   dev_err(dev, "Couldn't attach to pm_domain: %d\n", ret);
   goto err;
  }

  opp_table->genpd_virt_devs[index] = virt_dev;
  index++;
  name++;
 }

 if (virt_devs)
  *virt_devs = opp_table->genpd_virt_devs;
 mutex_unlock(&opp_table->genpd_virt_dev_lock);

 return opp_table;

err:
 _opp_detach_genpd(opp_table);
unlock:
 mutex_unlock(&opp_table->genpd_virt_dev_lock);

put_table:
 dev_pm_opp_put_opp_table(opp_table);

 return ERR_PTR(ret);
}
