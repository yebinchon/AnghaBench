
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int unknown_state_str ;
typedef int unknown_state_buffer ;
struct pqi_scsi_dev {int volume_status; int lun; int target; int bus; } ;
struct pqi_ctrl_info {TYPE_2__* scsi_host; TYPE_1__* pci_dev; } ;
struct TYPE_4__ {int host_no; } ;
struct TYPE_3__ {int dev; } ;
 int dev_info (int *,char*,int ,int ,int ,int ,char*) ;
 int snprintf (char*,int,char const*,int) ;

__attribute__((used)) static void pqi_show_volume_status(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device)
{
 char *status;
 static const char unknown_state_str[] =
  "Volume is in an unknown state (%u)";
 char unknown_state_buffer[sizeof(unknown_state_str) + 10];

 switch (device->volume_status) {
 case 143:
  status = "Volume online";
  break;
 case 149:
  status = "Volume failed";
  break;
 case 145:
  status = "Volume not configured";
  break;
 case 154:
  status = "Volume degraded";
  break;
 case 136:
  status = "Volume ready for recovery operation";
  break;
 case 130:
  status = "Volume undergoing recovery";
  break;
 case 128:
  status = "Wrong physical drive was replaced";
  break;
 case 139:
  status = "A physical drive not properly connected";
  break;
 case 147:
  status = "Hardware is overheating";
  break;
 case 148:
  status = "Hardware has overheated";
  break;
 case 131:
  status = "Volume undergoing expansion";
  break;
 case 146:
  status = "Volume waiting for transforming volume";
  break;
 case 138:
  status = "Volume queued for expansion";
  break;
 case 153:
  status = "Volume disabled due to SCSI ID conflict";
  break;
 case 152:
  status = "Volume has been ejected";
  break;
 case 132:
  status = "Volume undergoing background erase";
  break;
 case 137:
  status = "Volume ready for predictive spare rebuild";
  break;
 case 129:
  status = "Volume undergoing rapid parity initialization";
  break;
 case 140:
  status = "Volume queued for rapid parity initialization";
  break;
 case 150:
  status = "Encrypted volume inaccessible - key not present";
  break;
 case 134:
  status = "Volume undergoing encryption process";
  break;
 case 133:
  status = "Volume undergoing encryption re-keying process";
  break;
 case 151:
  status = "Volume encrypted but encryption is disabled";
  break;
 case 142:
  status = "Volume pending migration to encrypted state";
  break;
 case 141:
  status = "Volume pending encryption rekeying";
  break;
 case 144:
  status = "Volume not supported on this controller";
  break;
 case 135:
  status = "Volume status not available";
  break;
 default:
  snprintf(unknown_state_buffer, sizeof(unknown_state_buffer),
   unknown_state_str, device->volume_status);
  status = unknown_state_buffer;
  break;
 }

 dev_info(&ctrl_info->pci_dev->dev,
  "scsi %d:%d:%d:%d %s\n",
  ctrl_info->scsi_host->host_no,
  device->bus, device->target, device->lun, status);
}
