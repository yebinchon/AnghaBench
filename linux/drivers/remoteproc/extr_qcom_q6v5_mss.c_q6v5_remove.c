
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6v5 {int rproc; int proxy_pd_count; int proxy_pds; int active_pd_count; int active_pds; int ssr_subdev; int smd_subdev; int glink_subdev; int sysmon; } ;
struct platform_device {int dummy; } ;


 struct q6v5* platform_get_drvdata (struct platform_device*) ;
 int q6v5_pds_detach (struct q6v5*,int ,int ) ;
 int qcom_remove_glink_subdev (int ,int *) ;
 int qcom_remove_smd_subdev (int ,int *) ;
 int qcom_remove_ssr_subdev (int ,int *) ;
 int qcom_remove_sysmon_subdev (int ) ;
 int rproc_del (int ) ;
 int rproc_free (int ) ;

__attribute__((used)) static int q6v5_remove(struct platform_device *pdev)
{
 struct q6v5 *qproc = platform_get_drvdata(pdev);

 rproc_del(qproc->rproc);

 qcom_remove_sysmon_subdev(qproc->sysmon);
 qcom_remove_glink_subdev(qproc->rproc, &qproc->glink_subdev);
 qcom_remove_smd_subdev(qproc->rproc, &qproc->smd_subdev);
 qcom_remove_ssr_subdev(qproc->rproc, &qproc->ssr_subdev);

 q6v5_pds_detach(qproc, qproc->active_pds, qproc->active_pd_count);
 q6v5_pds_detach(qproc, qproc->proxy_pds, qproc->proxy_pd_count);

 rproc_free(qproc->rproc);

 return 0;
}
