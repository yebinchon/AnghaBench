
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int name; } ;
struct rockchip_pmu {int dev; struct rockchip_domain_info* info; int regmap; struct rockchip_pmu* pmu; struct generic_pm_domain genpd; } ;
struct rockchip_pm_domain {int dev; struct rockchip_domain_info* info; int regmap; struct rockchip_pm_domain* pmu; struct generic_pm_domain genpd; } ;
struct rockchip_domain_info {int req_mask; int req_w_mask; unsigned int ack_mask; int req_offset; } ;


 int dev_err (int ,char*,int ,int) ;
 int dsb (int ) ;
 int readx_poll_timeout_atomic (int ,struct rockchip_pmu*,int,int,int ,int) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 int regmap_write (int ,int ,int) ;
 int rockchip_pmu_domain_is_idle ;
 int rockchip_pmu_read_ack ;
 int sy ;

__attribute__((used)) static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
      bool idle)
{
 const struct rockchip_domain_info *pd_info = pd->info;
 struct generic_pm_domain *genpd = &pd->genpd;
 struct rockchip_pmu *pmu = pd->pmu;
 unsigned int target_ack;
 unsigned int val;
 bool is_idle;
 int ret;

 if (pd_info->req_mask == 0)
  return 0;
 else if (pd_info->req_w_mask)
  regmap_write(pmu->regmap, pmu->info->req_offset,
        idle ? (pd_info->req_mask | pd_info->req_w_mask) :
        pd_info->req_w_mask);
 else
  regmap_update_bits(pmu->regmap, pmu->info->req_offset,
       pd_info->req_mask, idle ? -1U : 0);

 dsb(sy);


 target_ack = idle ? pd_info->ack_mask : 0;
 ret = readx_poll_timeout_atomic(rockchip_pmu_read_ack, pmu, val,
     (val & pd_info->ack_mask) == target_ack,
     0, 10000);
 if (ret) {
  dev_err(pmu->dev,
   "failed to get ack on domain '%s', val=0x%x\n",
   genpd->name, val);
  return ret;
 }

 ret = readx_poll_timeout_atomic(rockchip_pmu_domain_is_idle, pd,
     is_idle, is_idle == idle, 0, 10000);
 if (ret) {
  dev_err(pmu->dev,
   "failed to set idle on domain '%s', val=%d\n",
   genpd->name, is_idle);
  return ret;
 }

 return 0;
}
