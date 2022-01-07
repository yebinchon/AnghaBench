
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {scalar_t__ channel; struct myrs_ldev_info* hostdata; int host; } ;
struct myrs_ldev_info {int dev_state; } ;
struct myrs_hba {TYPE_1__* ctlr_info; } ;
struct device {int dummy; } ;
typedef enum raid_state { ____Placeholder_raid_state } raid_state ;
struct TYPE_2__ {scalar_t__ physchan_present; } ;
 int RAID_STATE_ACTIVE ;
 int RAID_STATE_DEGRADED ;
 int RAID_STATE_OFFLINE ;
 int RAID_STATE_RESYNCING ;
 int RAID_STATE_UNKNOWN ;
 int myrs_raid_template ;
 int raid_set_state (int ,struct device*,int) ;
 struct myrs_hba* shost_priv (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static void
myrs_get_state(struct device *dev)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct myrs_hba *cs = shost_priv(sdev->host);
 struct myrs_ldev_info *ldev_info = sdev->hostdata;
 enum raid_state state = RAID_STATE_UNKNOWN;

 if (sdev->channel < cs->ctlr_info->physchan_present || !ldev_info)
  state = RAID_STATE_UNKNOWN;
 else {
  switch (ldev_info->dev_state) {
  case 131:
   state = RAID_STATE_ACTIVE;
   break;
  case 129:
  case 133:
   state = RAID_STATE_DEGRADED;
   break;
  case 130:
   state = RAID_STATE_RESYNCING;
   break;
  case 128:
  case 132:
   state = RAID_STATE_UNKNOWN;
   break;
  default:
   state = RAID_STATE_OFFLINE;
  }
 }
 raid_set_state(myrs_raid_template, dev, state);
}
