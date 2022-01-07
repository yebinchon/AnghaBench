
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_adsp {int dev; void* aggre2_clk; scalar_t__ has_aggre2_clk; void* xo; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*) ;
 void* devm_clk_get (int ,char*) ;

__attribute__((used)) static int adsp_init_clock(struct qcom_adsp *adsp)
{
 int ret;

 adsp->xo = devm_clk_get(adsp->dev, "xo");
 if (IS_ERR(adsp->xo)) {
  ret = PTR_ERR(adsp->xo);
  if (ret != -EPROBE_DEFER)
   dev_err(adsp->dev, "failed to get xo clock");
  return ret;
 }

 if (adsp->has_aggre2_clk) {
  adsp->aggre2_clk = devm_clk_get(adsp->dev, "aggre2");
  if (IS_ERR(adsp->aggre2_clk)) {
   ret = PTR_ERR(adsp->aggre2_clk);
   if (ret != -EPROBE_DEFER)
    dev_err(adsp->dev,
     "failed to get aggre2 clock");
   return ret;
  }
 }

 return 0;
}
