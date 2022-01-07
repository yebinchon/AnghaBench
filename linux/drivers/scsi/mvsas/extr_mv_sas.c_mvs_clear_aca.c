
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mvs_tmf_task {int tmf; } ;
struct domain_device {int dummy; } ;


 int TMF_CLEAR_ACA ;
 int TMF_RESP_FUNC_FAILED ;
 int mvs_debug_issue_ssp_tmf (struct domain_device*,int *,struct mvs_tmf_task*) ;

int mvs_clear_aca(struct domain_device *dev, u8 *lun)
{
 int rc = TMF_RESP_FUNC_FAILED;
 struct mvs_tmf_task tmf_task;

 tmf_task.tmf = TMF_CLEAR_ACA;
 rc = mvs_debug_issue_ssp_tmf(dev, lun, &tmf_task);

 return rc;
}
