
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_adsp {int rproc; int ssr_subdev; int smd_subdev; int sysmon; int glink_subdev; } ;
struct platform_device {int dummy; } ;


 struct qcom_adsp* platform_get_drvdata (struct platform_device*) ;
 int qcom_remove_glink_subdev (int ,int *) ;
 int qcom_remove_smd_subdev (int ,int *) ;
 int qcom_remove_ssr_subdev (int ,int *) ;
 int qcom_remove_sysmon_subdev (int ) ;
 int rproc_del (int ) ;
 int rproc_free (int ) ;

__attribute__((used)) static int adsp_remove(struct platform_device *pdev)
{
 struct qcom_adsp *adsp = platform_get_drvdata(pdev);

 rproc_del(adsp->rproc);

 qcom_remove_glink_subdev(adsp->rproc, &adsp->glink_subdev);
 qcom_remove_sysmon_subdev(adsp->sysmon);
 qcom_remove_smd_subdev(adsp->rproc, &adsp->smd_subdev);
 qcom_remove_ssr_subdev(adsp->rproc, &adsp->ssr_subdev);
 rproc_free(adsp->rproc);

 return 0;
}
