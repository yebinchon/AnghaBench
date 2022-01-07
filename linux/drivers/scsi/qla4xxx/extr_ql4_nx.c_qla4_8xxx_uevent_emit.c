
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scsi_qla_host {TYPE_2__* pdev; int host_no; } ;
typedef int event_string ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int KOBJ_CHANGE ;

 int kobject_uevent_env (int *,int ,char**) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static void qla4_8xxx_uevent_emit(struct scsi_qla_host *ha, u32 code)
{
 char event_string[40];
 char *envp[] = { event_string, ((void*)0) };

 switch (code) {
 case 128:
  snprintf(event_string, sizeof(event_string), "FW_DUMP=%ld",
    ha->host_no);
  break;
 default:

  break;
 }

 kobject_uevent_env(&(&ha->pdev->dev)->kobj, KOBJ_CHANGE, envp);
}
