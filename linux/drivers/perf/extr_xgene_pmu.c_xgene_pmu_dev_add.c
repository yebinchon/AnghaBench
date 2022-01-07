
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int enable_mask; } ;
struct xgene_pmu_dev_ctx {int name; struct xgene_pmu_dev* pmu_dev; TYPE_1__ inf; } ;
struct xgene_pmu_dev {int attr_groups; TYPE_1__* inf; struct xgene_pmu* parent; } ;
struct xgene_pmu {int l3c_active_mask; int mcb_active_mask; int mc_active_mask; int version; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCP_PMU_V3 ;





 int dev_err (struct device*,char*,int ) ;
 int dev_info (struct device*,char*,int ) ;
 struct xgene_pmu_dev* devm_kzalloc (struct device*,int,int ) ;
 int iob_fast_pmu_v3_attr_groups ;
 int iob_pmu_attr_groups ;
 int iob_slow_pmu_v3_attr_groups ;
 int l3c_pmu_attr_groups ;
 int l3c_pmu_v3_attr_groups ;
 int mc_pmu_attr_groups ;
 int mc_pmu_v3_attr_groups ;
 int mcb_pmu_attr_groups ;
 int mcb_pmu_v3_attr_groups ;
 scalar_t__ xgene_init_perf (struct xgene_pmu_dev*,int ) ;

__attribute__((used)) static int
xgene_pmu_dev_add(struct xgene_pmu *xgene_pmu, struct xgene_pmu_dev_ctx *ctx)
{
 struct device *dev = xgene_pmu->dev;
 struct xgene_pmu_dev *pmu;

 pmu = devm_kzalloc(dev, sizeof(*pmu), GFP_KERNEL);
 if (!pmu)
  return -ENOMEM;
 pmu->parent = xgene_pmu;
 pmu->inf = &ctx->inf;
 ctx->pmu_dev = pmu;

 switch (pmu->inf->type) {
 case 130:
  if (!(xgene_pmu->l3c_active_mask & pmu->inf->enable_mask))
   return -ENODEV;
  if (xgene_pmu->version == PCP_PMU_V3)
   pmu->attr_groups = l3c_pmu_v3_attr_groups;
  else
   pmu->attr_groups = l3c_pmu_attr_groups;
  break;
 case 132:
  if (xgene_pmu->version == PCP_PMU_V3)
   pmu->attr_groups = iob_fast_pmu_v3_attr_groups;
  else
   pmu->attr_groups = iob_pmu_attr_groups;
  break;
 case 131:
  if (xgene_pmu->version == PCP_PMU_V3)
   pmu->attr_groups = iob_slow_pmu_v3_attr_groups;
  break;
 case 128:
  if (!(xgene_pmu->mcb_active_mask & pmu->inf->enable_mask))
   return -ENODEV;
  if (xgene_pmu->version == PCP_PMU_V3)
   pmu->attr_groups = mcb_pmu_v3_attr_groups;
  else
   pmu->attr_groups = mcb_pmu_attr_groups;
  break;
 case 129:
  if (!(xgene_pmu->mc_active_mask & pmu->inf->enable_mask))
   return -ENODEV;
  if (xgene_pmu->version == PCP_PMU_V3)
   pmu->attr_groups = mc_pmu_v3_attr_groups;
  else
   pmu->attr_groups = mc_pmu_attr_groups;
  break;
 default:
  return -EINVAL;
 }

 if (xgene_init_perf(pmu, ctx->name)) {
  dev_err(dev, "%s PMU: Failed to init perf driver\n", ctx->name);
  return -ENODEV;
 }

 dev_info(dev, "%s PMU registered\n", ctx->name);

 return 0;
}
