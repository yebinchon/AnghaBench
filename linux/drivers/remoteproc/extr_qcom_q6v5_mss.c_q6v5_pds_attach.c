
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENODATA ;
 scalar_t__ IS_ERR_OR_NULL (struct device*) ;
 scalar_t__ PTR_ERR (struct device*) ;
 struct device* dev_pm_domain_attach_by_name (struct device*,char*) ;
 int dev_pm_domain_detach (struct device*,int) ;

__attribute__((used)) static int q6v5_pds_attach(struct device *dev, struct device **devs,
      char **pd_names)
{
 size_t num_pds = 0;
 int ret;
 int i;

 if (!pd_names)
  return 0;

 while (pd_names[num_pds])
  num_pds++;

 for (i = 0; i < num_pds; i++) {
  devs[i] = dev_pm_domain_attach_by_name(dev, pd_names[i]);
  if (IS_ERR_OR_NULL(devs[i])) {
   ret = PTR_ERR(devs[i]) ? : -ENODATA;
   goto unroll_attach;
  }
 }

 return num_pds;

unroll_attach:
 for (i--; i >= 0; i--)
  dev_pm_domain_detach(devs[i], 0);

 return ret;
}
