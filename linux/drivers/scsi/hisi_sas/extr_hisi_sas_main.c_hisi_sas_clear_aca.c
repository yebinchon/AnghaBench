
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hisi_sas_tmf_task {int tmf; } ;
struct domain_device {int dummy; } ;


 int TMF_CLEAR_ACA ;
 int hisi_sas_debug_issue_ssp_tmf (struct domain_device*,int *,struct hisi_sas_tmf_task*) ;

__attribute__((used)) static int hisi_sas_clear_aca(struct domain_device *device, u8 *lun)
{
 struct hisi_sas_tmf_task tmf_task;
 int rc;

 tmf_task.tmf = TMF_CLEAR_ACA;
 rc = hisi_sas_debug_issue_ssp_tmf(device, lun, &tmf_task);

 return rc;
}
