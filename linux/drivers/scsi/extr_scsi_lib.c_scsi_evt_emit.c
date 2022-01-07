
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_event {int evt_type; } ;
struct TYPE_2__ {int kobj; } ;
struct scsi_device {TYPE_1__ sdev_gendev; } ;


 int KOBJ_CHANGE ;
 int kobject_uevent_env (int *,int ,char**) ;
 int scsi_rescan_device (TYPE_1__*) ;

__attribute__((used)) static void scsi_evt_emit(struct scsi_device *sdev, struct scsi_event *evt)
{
 int idx = 0;
 char *envp[3];

 switch (evt->evt_type) {
 case 131:
  envp[idx++] = "SDEV_MEDIA_CHANGE=1";
  break;
 case 133:
  scsi_rescan_device(&sdev->sdev_gendev);
  envp[idx++] = "SDEV_UA=INQUIRY_DATA_HAS_CHANGED";
  break;
 case 134:
  envp[idx++] = "SDEV_UA=CAPACITY_DATA_HAS_CHANGED";
  break;
 case 128:
        envp[idx++] = "SDEV_UA=THIN_PROVISIONING_SOFT_THRESHOLD_REACHED";
  break;
 case 130:
  envp[idx++] = "SDEV_UA=MODE_PARAMETERS_CHANGED";
  break;
 case 132:
  envp[idx++] = "SDEV_UA=REPORTED_LUNS_DATA_HAS_CHANGED";
  break;
 case 135:
  envp[idx++] = "SDEV_UA=ASYMMETRIC_ACCESS_STATE_CHANGED";
  break;
 case 129:
  envp[idx++] = "SDEV_UA=POWER_ON_RESET_OCCURRED";
  break;
 default:

  break;
 }

 envp[idx++] = ((void*)0);

 kobject_uevent_env(&sdev->sdev_gendev.kobj, KOBJ_CHANGE, envp);
}
