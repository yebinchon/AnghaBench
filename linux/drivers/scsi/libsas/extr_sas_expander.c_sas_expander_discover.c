
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expander_device {int * ex_phy; int num_phys; } ;
struct domain_device {struct expander_device ex_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (int ,int,int ) ;
 int kfree (int *) ;
 int sas_ex_phy_discover (struct domain_device*,int) ;

__attribute__((used)) static int sas_expander_discover(struct domain_device *dev)
{
 struct expander_device *ex = &dev->ex_dev;
 int res = -ENOMEM;

 ex->ex_phy = kcalloc(ex->num_phys, sizeof(*ex->ex_phy), GFP_KERNEL);
 if (!ex->ex_phy)
  return -ENOMEM;

 res = sas_ex_phy_discover(dev, -1);
 if (res)
  goto out_err;

 return 0;
 out_err:
 kfree(ex->ex_phy);
 ex->ex_phy = ((void*)0);
 return res;
}
