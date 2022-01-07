
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int bootaddr; struct q6v5_wcss* priv; } ;
struct q6v5_wcss {int wcss_reset; int wcss_q6_reset; int dev; int q6v5; scalar_t__ reg_base; scalar_t__ halt_nc; int halt_map; } ;


 int ETIMEDOUT ;
 int HZ ;
 scalar_t__ Q6SS_RST_EVB ;
 scalar_t__ TCSR_GLOBAL_CFG0 ;
 scalar_t__ TCSR_GLOBAL_CFG1 ;
 int TCSR_WCSS_CLK_ENABLE ;
 int TCSR_WCSS_CLK_MASK ;
 int dev_err (int ,char*) ;
 int q6v5_wcss_reset (struct q6v5_wcss*) ;
 int qcom_q6v5_prepare (int *) ;
 int qcom_q6v5_wait_for_start (int *,int) ;
 int regmap_update_bits (int ,scalar_t__,int,int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int q6v5_wcss_start(struct rproc *rproc)
{
 struct q6v5_wcss *wcss = rproc->priv;
 int ret;

 qcom_q6v5_prepare(&wcss->q6v5);


 ret = reset_control_deassert(wcss->wcss_reset);
 if (ret) {
  dev_err(wcss->dev, "wcss_reset failed\n");
  return ret;
 }

 ret = reset_control_deassert(wcss->wcss_q6_reset);
 if (ret) {
  dev_err(wcss->dev, "wcss_q6_reset failed\n");
  goto wcss_reset;
 }


 ret = regmap_update_bits(wcss->halt_map,
     wcss->halt_nc + TCSR_GLOBAL_CFG0,
     TCSR_WCSS_CLK_MASK,
     TCSR_WCSS_CLK_ENABLE);
 if (ret)
  goto wcss_q6_reset;

 ret = regmap_update_bits(wcss->halt_map,
     wcss->halt_nc + TCSR_GLOBAL_CFG1,
     1, 0);
 if (ret)
  goto wcss_q6_reset;


 writel(rproc->bootaddr >> 4, wcss->reg_base + Q6SS_RST_EVB);

 ret = q6v5_wcss_reset(wcss);
 if (ret)
  goto wcss_q6_reset;

 ret = qcom_q6v5_wait_for_start(&wcss->q6v5, 5 * HZ);
 if (ret == -ETIMEDOUT)
  dev_err(wcss->dev, "start timed out\n");

 return ret;

wcss_q6_reset:
 reset_control_assert(wcss->wcss_q6_reset);

wcss_reset:
 reset_control_assert(wcss->wcss_reset);

 return ret;
}
