
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {unsigned short id; int sdev_gendev; int hostdata; int host; } ;
struct myrb_ldev_info {int raid_level; int state; } ;
struct myrb_hba {struct myrb_ldev_info* ldev_info_buf; } ;
typedef enum raid_level { ____Placeholder_raid_level } raid_level ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;






 int RAID_LEVEL_1 ;
 int RAID_LEVEL_3 ;
 int RAID_LEVEL_5 ;
 int RAID_LEVEL_6 ;
 int RAID_LEVEL_JBOD ;
 int RAID_LEVEL_LINEAR ;
 int RAID_LEVEL_UNKNOWN ;
 int dev_dbg (int *,char*,unsigned short,int ) ;
 int kzalloc (int,int ) ;
 int memcpy (int ,struct myrb_ldev_info*,int) ;
 int myrb_raid_template ;
 int raid_set_level (int ,int *,int) ;
 struct myrb_hba* shost_priv (int ) ;

__attribute__((used)) static int myrb_ldev_slave_alloc(struct scsi_device *sdev)
{
 struct myrb_hba *cb = shost_priv(sdev->host);
 struct myrb_ldev_info *ldev_info;
 unsigned short ldev_num = sdev->id;
 enum raid_level level;

 ldev_info = cb->ldev_info_buf + ldev_num;
 if (!ldev_info)
  return -ENXIO;

 sdev->hostdata = kzalloc(sizeof(*ldev_info), GFP_KERNEL);
 if (!sdev->hostdata)
  return -ENOMEM;
 dev_dbg(&sdev->sdev_gendev,
  "slave alloc ldev %d state %x\n",
  ldev_num, ldev_info->state);
 memcpy(sdev->hostdata, ldev_info,
        sizeof(*ldev_info));
 switch (ldev_info->raid_level) {
 case 132:
  level = RAID_LEVEL_LINEAR;
  break;
 case 131:
  level = RAID_LEVEL_1;
  break;
 case 130:
  level = RAID_LEVEL_3;
  break;
 case 129:
  level = RAID_LEVEL_5;
  break;
 case 128:
  level = RAID_LEVEL_6;
  break;
 case 133:
  level = RAID_LEVEL_JBOD;
  break;
 default:
  level = RAID_LEVEL_UNKNOWN;
  break;
 }
 raid_set_level(myrb_raid_template, &sdev->sdev_gendev, level);
 return 0;
}
