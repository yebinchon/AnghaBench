
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pmu {int mutex; int dev; } ;
struct rockchip_pm_domain {int clks; int num_clks; struct rockchip_pmu* pmu; } ;


 int clk_bulk_disable (int ,int ) ;
 int clk_bulk_enable (int ,int ) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rockchip_do_pmu_set_power_domain (struct rockchip_pm_domain*,int) ;
 int rockchip_pmu_domain_is_on (struct rockchip_pm_domain*) ;
 int rockchip_pmu_restore_qos (struct rockchip_pm_domain*) ;
 int rockchip_pmu_save_qos (struct rockchip_pm_domain*) ;
 int rockchip_pmu_set_idle_request (struct rockchip_pm_domain*,int) ;

__attribute__((used)) static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
{
 struct rockchip_pmu *pmu = pd->pmu;
 int ret;

 mutex_lock(&pmu->mutex);

 if (rockchip_pmu_domain_is_on(pd) != power_on) {
  ret = clk_bulk_enable(pd->num_clks, pd->clks);
  if (ret < 0) {
   dev_err(pmu->dev, "failed to enable clocks\n");
   mutex_unlock(&pmu->mutex);
   return ret;
  }

  if (!power_on) {
   rockchip_pmu_save_qos(pd);


   rockchip_pmu_set_idle_request(pd, 1);
  }

  rockchip_do_pmu_set_power_domain(pd, power_on);

  if (power_on) {

   rockchip_pmu_set_idle_request(pd, 0);

   rockchip_pmu_restore_qos(pd);
  }

  clk_bulk_disable(pd->num_clks, pd->clks);
 }

 mutex_unlock(&pmu->mutex);
 return 0;
}
