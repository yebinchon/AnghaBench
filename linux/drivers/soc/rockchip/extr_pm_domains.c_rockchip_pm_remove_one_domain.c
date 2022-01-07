
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct rockchip_pm_domain {TYPE_1__* pmu; scalar_t__ num_clks; int clks; TYPE_2__ genpd; } ;
struct TYPE_3__ {int mutex; int dev; } ;


 int clk_bulk_put (scalar_t__,int ) ;
 int clk_bulk_unprepare (scalar_t__,int ) ;
 int dev_err (int ,char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_genpd_remove (TYPE_2__*) ;

__attribute__((used)) static void rockchip_pm_remove_one_domain(struct rockchip_pm_domain *pd)
{
 int ret;





 ret = pm_genpd_remove(&pd->genpd);
 if (ret < 0)
  dev_err(pd->pmu->dev, "failed to remove domain '%s' : %d - state may be inconsistent\n",
   pd->genpd.name, ret);

 clk_bulk_unprepare(pd->num_clks, pd->clks);
 clk_bulk_put(pd->num_clks, pd->clks);


 mutex_lock(&pd->pmu->mutex);
 pd->num_clks = 0;
 mutex_unlock(&pd->pmu->mutex);


}
