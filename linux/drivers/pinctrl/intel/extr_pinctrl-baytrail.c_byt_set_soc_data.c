
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_pinctrl_soc_data {int ncommunities; struct intel_community* communities; } ;
struct intel_community {int pad_regs; } ;
struct byt_gpio {TYPE_1__* pdev; struct intel_pinctrl_soc_data const* soc_data; struct intel_community* communities_copy; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct intel_community* devm_kcalloc (int *,int,int,int ) ;
 int devm_platform_ioremap_resource (TYPE_1__*,int ) ;

__attribute__((used)) static int byt_set_soc_data(struct byt_gpio *vg,
       const struct intel_pinctrl_soc_data *soc_data)
{
 int i;

 vg->soc_data = soc_data;
 vg->communities_copy = devm_kcalloc(&vg->pdev->dev,
         soc_data->ncommunities,
         sizeof(*vg->communities_copy),
         GFP_KERNEL);
 if (!vg->communities_copy)
  return -ENOMEM;

 for (i = 0; i < soc_data->ncommunities; i++) {
  struct intel_community *comm = vg->communities_copy + i;

  *comm = vg->soc_data->communities[i];

  comm->pad_regs = devm_platform_ioremap_resource(vg->pdev, 0);
  if (IS_ERR(comm->pad_regs))
   return PTR_ERR(comm->pad_regs);
 }

 return 0;
}
