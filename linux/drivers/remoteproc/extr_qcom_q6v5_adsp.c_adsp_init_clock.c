
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qcom_adsp {int num_clks; TYPE_1__* clks; int dev; int xo; } ;
struct TYPE_3__ {char const* id; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*) ;
 int devm_clk_bulk_get (int ,int,TYPE_1__*) ;
 int devm_clk_get (int ,char*) ;
 TYPE_1__* devm_kcalloc (int ,int,int,int ) ;

__attribute__((used)) static int adsp_init_clock(struct qcom_adsp *adsp, const char **clk_ids)
{
 int num_clks = 0;
 int i, ret;

 adsp->xo = devm_clk_get(adsp->dev, "xo");
 if (IS_ERR(adsp->xo)) {
  ret = PTR_ERR(adsp->xo);
  if (ret != -EPROBE_DEFER)
   dev_err(adsp->dev, "failed to get xo clock");
  return ret;
 }

 for (i = 0; clk_ids[i]; i++)
  num_clks++;

 adsp->num_clks = num_clks;
 adsp->clks = devm_kcalloc(adsp->dev, adsp->num_clks,
    sizeof(*adsp->clks), GFP_KERNEL);
 if (!adsp->clks)
  return -ENOMEM;

 for (i = 0; i < adsp->num_clks; i++)
  adsp->clks[i].id = clk_ids[i];

 return devm_clk_bulk_get(adsp->dev, adsp->num_clks, adsp->clks);
}
