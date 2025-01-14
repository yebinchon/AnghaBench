
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rproc {scalar_t__ priv; } ;
struct qcom_adsp {int sysmon; int ssr_subdev; int smd_subdev; int glink_subdev; int q6v5; int has_aggre2_clk; int pas_id; struct rproc* rproc; TYPE_1__* dev; } ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct adsp_data {char* firmware_name; int ssctl_id; int sysmon_name; int ssr_name; int crash_reason_smem; int has_aggre2_clk; int pas_id; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adsp_alloc_memory_region (struct qcom_adsp*) ;
 int adsp_init_clock (struct qcom_adsp*) ;
 int adsp_init_regulator (struct qcom_adsp*) ;
 int adsp_ops ;
 int dev_err (TYPE_1__*,char*) ;
 struct adsp_data* of_device_get_match_data (TYPE_1__*) ;
 int of_property_read_string (int ,char*,char const**) ;
 int platform_set_drvdata (struct platform_device*,struct qcom_adsp*) ;
 int qcom_add_glink_subdev (struct rproc*,int *) ;
 int qcom_add_smd_subdev (struct rproc*,int *) ;
 int qcom_add_ssr_subdev (struct rproc*,int *,int ) ;
 int qcom_add_sysmon_subdev (struct rproc*,int ,int ) ;
 int qcom_pas_handover ;
 int qcom_q6v5_init (int *,struct platform_device*,struct rproc*,int ,int ) ;
 int qcom_scm_is_available () ;
 int rproc_add (struct rproc*) ;
 struct rproc* rproc_alloc (TYPE_1__*,int ,int *,char const*,int) ;
 int rproc_free (struct rproc*) ;

__attribute__((used)) static int adsp_probe(struct platform_device *pdev)
{
 const struct adsp_data *desc;
 struct qcom_adsp *adsp;
 struct rproc *rproc;
 const char *fw_name;
 int ret;

 desc = of_device_get_match_data(&pdev->dev);
 if (!desc)
  return -EINVAL;

 if (!qcom_scm_is_available())
  return -EPROBE_DEFER;

 fw_name = desc->firmware_name;
 ret = of_property_read_string(pdev->dev.of_node, "firmware-name",
          &fw_name);
 if (ret < 0 && ret != -EINVAL)
  return ret;

 rproc = rproc_alloc(&pdev->dev, pdev->name, &adsp_ops,
       fw_name, sizeof(*adsp));
 if (!rproc) {
  dev_err(&pdev->dev, "unable to allocate remoteproc\n");
  return -ENOMEM;
 }

 adsp = (struct qcom_adsp *)rproc->priv;
 adsp->dev = &pdev->dev;
 adsp->rproc = rproc;
 adsp->pas_id = desc->pas_id;
 adsp->has_aggre2_clk = desc->has_aggre2_clk;
 platform_set_drvdata(pdev, adsp);

 ret = adsp_alloc_memory_region(adsp);
 if (ret)
  goto free_rproc;

 ret = adsp_init_clock(adsp);
 if (ret)
  goto free_rproc;

 ret = adsp_init_regulator(adsp);
 if (ret)
  goto free_rproc;

 ret = qcom_q6v5_init(&adsp->q6v5, pdev, rproc, desc->crash_reason_smem,
        qcom_pas_handover);
 if (ret)
  goto free_rproc;

 qcom_add_glink_subdev(rproc, &adsp->glink_subdev);
 qcom_add_smd_subdev(rproc, &adsp->smd_subdev);
 qcom_add_ssr_subdev(rproc, &adsp->ssr_subdev, desc->ssr_name);
 adsp->sysmon = qcom_add_sysmon_subdev(rproc,
           desc->sysmon_name,
           desc->ssctl_id);
 if (IS_ERR(adsp->sysmon)) {
  ret = PTR_ERR(adsp->sysmon);
  goto free_rproc;
 }

 ret = rproc_add(rproc);
 if (ret)
  goto free_rproc;

 return 0;

free_rproc:
 rproc_free(rproc);

 return ret;
}
