
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_wcnss {int rproc; int smd_subdev; int sysmon; int state; } ;
struct platform_device {int dev; } ;


 int of_platform_depopulate (int *) ;
 struct qcom_wcnss* platform_get_drvdata (struct platform_device*) ;
 int qcom_remove_smd_subdev (int ,int *) ;
 int qcom_remove_sysmon_subdev (int ) ;
 int qcom_smem_state_put (int ) ;
 int rproc_del (int ) ;
 int rproc_free (int ) ;

__attribute__((used)) static int wcnss_remove(struct platform_device *pdev)
{
 struct qcom_wcnss *wcnss = platform_get_drvdata(pdev);

 of_platform_depopulate(&pdev->dev);

 qcom_smem_state_put(wcnss->state);
 rproc_del(wcnss->rproc);

 qcom_remove_sysmon_subdev(wcnss->sysmon);
 qcom_remove_smd_subdev(wcnss->rproc, &wcnss->smd_subdev);
 rproc_free(wcnss->rproc);

 return 0;
}
