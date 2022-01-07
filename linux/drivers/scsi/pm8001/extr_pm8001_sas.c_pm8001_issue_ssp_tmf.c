
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sas_ssp_task {int LUN; } ;
struct pm8001_tmf_task {int dummy; } ;
struct domain_device {int tproto; } ;
typedef int ssp_task ;


 int SAS_PROTOCOL_SSP ;
 int TMF_RESP_FUNC_ESUPP ;
 int pm8001_exec_internal_tmf_task (struct domain_device*,struct sas_ssp_task*,int,struct pm8001_tmf_task*) ;
 int strncpy (int *,int *,int) ;

__attribute__((used)) static int pm8001_issue_ssp_tmf(struct domain_device *dev,
 u8 *lun, struct pm8001_tmf_task *tmf)
{
 struct sas_ssp_task ssp_task;
 if (!(dev->tproto & SAS_PROTOCOL_SSP))
  return TMF_RESP_FUNC_ESUPP;

 strncpy((u8 *)&ssp_task.LUN, lun, 8);
 return pm8001_exec_internal_tmf_task(dev, &ssp_task, sizeof(ssp_task),
  tmf);
}
