
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ channel; int host; struct myrb_ldev_info* hostdata; } ;
struct myrb_ldev_info {int state; } ;
struct myrb_hba {int dummy; } ;
struct device {int dummy; } ;
typedef enum raid_state { ____Placeholder_raid_state } raid_state ;





 unsigned short MYRB_STATUS_SUCCESS ;
 int RAID_STATE_ACTIVE ;
 int RAID_STATE_DEGRADED ;
 int RAID_STATE_OFFLINE ;
 int RAID_STATE_RESYNCING ;
 int RAID_STATE_UNKNOWN ;
 unsigned short myrb_get_rbld_progress (struct myrb_hba*,int *) ;
 scalar_t__ myrb_logical_channel (int ) ;
 int myrb_raid_template ;
 int raid_set_state (int ,struct device*,int) ;
 struct myrb_hba* shost_priv (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static void myrb_get_state(struct device *dev)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct myrb_hba *cb = shost_priv(sdev->host);
 struct myrb_ldev_info *ldev_info = sdev->hostdata;
 enum raid_state state = RAID_STATE_UNKNOWN;
 unsigned short status;

 if (sdev->channel < myrb_logical_channel(sdev->host) || !ldev_info)
  state = RAID_STATE_UNKNOWN;
 else {
  status = myrb_get_rbld_progress(cb, ((void*)0));
  if (status == MYRB_STATUS_SUCCESS)
   state = RAID_STATE_RESYNCING;
  else {
   switch (ldev_info->state) {
   case 129:
    state = RAID_STATE_ACTIVE;
    break;
   case 128:
   case 130:
    state = RAID_STATE_DEGRADED;
    break;
   default:
    state = RAID_STATE_OFFLINE;
   }
  }
 }
 raid_set_state(myrb_raid_template, dev, state);
}
