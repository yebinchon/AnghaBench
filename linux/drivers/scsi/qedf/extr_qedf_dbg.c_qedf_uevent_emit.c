
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int kobj; } ;
struct Scsi_Host {int host_no; TYPE_1__ shost_gendev; } ;
typedef int event_string ;


 int KOBJ_CHANGE ;

 int kobject_uevent_env (int *,int ,char**) ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,int) ;
 int strscpy (char*,char*,int) ;

void
qedf_uevent_emit(struct Scsi_Host *shost, u32 code, char *msg)
{
 char event_string[40];
 char *envp[] = {event_string, ((void*)0)};

 memset(event_string, 0, sizeof(event_string));
 switch (code) {
 case 128:
  if (msg)
   strscpy(event_string, msg, sizeof(event_string));
  else
   sprintf(event_string, "GRCDUMP=%u", shost->host_no);
  break;
 default:

  break;
 }

 kobject_uevent_env(&shost->shost_gendev.kobj, KOBJ_CHANGE, envp);
}
