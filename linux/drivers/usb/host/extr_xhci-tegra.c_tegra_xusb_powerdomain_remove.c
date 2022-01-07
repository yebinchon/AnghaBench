
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb {int genpd_dev_host; int genpd_dev_ss; scalar_t__ genpd_dl_host; scalar_t__ genpd_dl_ss; } ;
struct device {int dummy; } ;


 int IS_ERR_OR_NULL (int ) ;
 int dev_pm_domain_detach (int ,int) ;
 int device_link_del (scalar_t__) ;

__attribute__((used)) static void tegra_xusb_powerdomain_remove(struct device *dev,
       struct tegra_xusb *tegra)
{
 if (tegra->genpd_dl_ss)
  device_link_del(tegra->genpd_dl_ss);
 if (tegra->genpd_dl_host)
  device_link_del(tegra->genpd_dl_host);
 if (!IS_ERR_OR_NULL(tegra->genpd_dev_ss))
  dev_pm_domain_detach(tegra->genpd_dev_ss, 1);
 if (!IS_ERR_OR_NULL(tegra->genpd_dev_host))
  dev_pm_domain_detach(tegra->genpd_dev_host, 1);
}
