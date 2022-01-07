
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sas_ssp_task {int LUN; } ;
struct hisi_sas_tmf_task {int dummy; } ;
struct domain_device {int tproto; } ;
typedef int ssp_task ;


 int SAS_PROTOCOL_SSP ;
 int TMF_RESP_FUNC_ESUPP ;
 int hisi_sas_exec_internal_tmf_task (struct domain_device*,struct sas_ssp_task*,int,struct hisi_sas_tmf_task*) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int hisi_sas_debug_issue_ssp_tmf(struct domain_device *device,
    u8 *lun, struct hisi_sas_tmf_task *tmf)
{
 struct sas_ssp_task ssp_task;

 if (!(device->tproto & SAS_PROTOCOL_SSP))
  return TMF_RESP_FUNC_ESUPP;

 memcpy(ssp_task.LUN, lun, 8);

 return hisi_sas_exec_internal_tmf_task(device, &ssp_task,
    sizeof(ssp_task), tmf);
}
