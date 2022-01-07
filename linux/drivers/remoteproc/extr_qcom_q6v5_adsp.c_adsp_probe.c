
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ priv; } ;
struct qcom_adsp {int * dev; int sysmon; int ssr_subdev; int glink_subdev; int q6v5; struct rproc* rproc; } ;
struct platform_device {int dev; int name; } ;
struct adsp_pil_data {int ssctl_id; int sysmon_name; int ssr_name; int crash_reason_smem; int clk_ids; int firmware_name; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adsp_alloc_memory_region (struct qcom_adsp*) ;
 int adsp_init_clock (struct qcom_adsp*,int ) ;
 int adsp_init_mmio (struct qcom_adsp*,struct platform_device*) ;
 int adsp_init_reset (struct qcom_adsp*) ;
 int adsp_ops ;
 int dev_err (int *,char*) ;
 struct adsp_pil_data* of_device_get_match_data (int *) ;
 int platform_set_drvdata (struct platform_device*,struct qcom_adsp*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int qcom_add_glink_subdev (struct rproc*,int *) ;
 int qcom_add_ssr_subdev (struct rproc*,int *,int ) ;
 int qcom_add_sysmon_subdev (struct rproc*,int ,int ) ;
 int qcom_adsp_pil_handover ;
 int qcom_q6v5_init (int *,struct platform_device*,struct rproc*,int ,int ) ;
 int rproc_add (struct rproc*) ;
 struct rproc* rproc_alloc (int *,int ,int *,int ,int) ;
 int rproc_free (struct rproc*) ;

__attribute__((used)) static int adsp_probe(struct platform_device *pdev)
{
 const struct adsp_pil_data *desc;
 struct qcom_adsp *adsp;
 struct rproc *rproc;
 int ret;

 desc = of_device_get_match_data(&pdev->dev);
 if (!desc)
  return -EINVAL;

 rproc = rproc_alloc(&pdev->dev, pdev->name, &adsp_ops,
       desc->firmware_name, sizeof(*adsp));
 if (!rproc) {
  dev_err(&pdev->dev, "unable to allocate remoteproc\n");
  return -ENOMEM;
 }

 adsp = (struct qcom_adsp *)rproc->priv;
 adsp->dev = &pdev->dev;
 adsp->rproc = rproc;
 platform_set_drvdata(pdev, adsp);

 ret = adsp_alloc_memory_region(adsp);
 if (ret)
  goto free_rproc;

 ret = adsp_init_clock(adsp, desc->clk_ids);
 if (ret)
  goto free_rproc;

 pm_runtime_enable(adsp->dev);

 ret = adsp_init_reset(adsp);
 if (ret)
  goto disable_pm;

 ret = adsp_init_mmio(adsp, pdev);
 if (ret)
  goto disable_pm;

 ret = qcom_q6v5_init(&adsp->q6v5, pdev, rproc, desc->crash_reason_smem,
        qcom_adsp_pil_handover);
 if (ret)
  goto disable_pm;

 qcom_add_glink_subdev(rproc, &adsp->glink_subdev);
 qcom_add_ssr_subdev(rproc, &adsp->ssr_subdev, desc->ssr_name);
 adsp->sysmon = qcom_add_sysmon_subdev(rproc,
           desc->sysmon_name,
           desc->ssctl_id);
 if (IS_ERR(adsp->sysmon)) {
  ret = PTR_ERR(adsp->sysmon);
  goto disable_pm;
 }

 ret = rproc_add(rproc);
 if (ret)
  goto disable_pm;

 return 0;

disable_pm:
 pm_runtime_disable(adsp->dev);
free_rproc:
 rproc_free(rproc);

 return ret;
}
