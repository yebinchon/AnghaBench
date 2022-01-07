
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {scalar_t__ channel; struct myrs_pdev_info* hostdata; int lun; int id; int sdev_gendev; TYPE_2__* host; } ;
struct myrs_pdev_info {int raid_level; scalar_t__ dev_state; int ldev_num; int lun; int target; int channel; } ;
struct myrs_ldev_info {int raid_level; scalar_t__ dev_state; int ldev_num; int lun; int target; int channel; } ;
struct myrs_hba {TYPE_1__* ctlr_info; } ;
typedef enum raid_level { ____Placeholder_raid_level } raid_level ;
struct TYPE_4__ {scalar_t__ max_channel; } ;
struct TYPE_3__ {scalar_t__ physchan_present; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int KERN_DEBUG ;
 scalar_t__ MYRS_DEVICE_ONLINE ;
 unsigned char MYRS_STATUS_SUCCESS ;
 int RAID_LEVEL_1 ;
 int RAID_LEVEL_3 ;
 int RAID_LEVEL_5 ;
 int RAID_LEVEL_6 ;
 int RAID_LEVEL_JBOD ;
 int RAID_LEVEL_LINEAR ;
 int RAID_LEVEL_UNKNOWN ;
 int dev_dbg (int *,char*,int ,int ,int ,int ) ;
 int kfree (struct myrs_pdev_info*) ;
 struct myrs_pdev_info* kzalloc (int,int) ;
 char* myrs_devstate_name (scalar_t__) ;
 unsigned char myrs_get_ldev_info (struct myrs_hba*,unsigned short,struct myrs_pdev_info*) ;
 unsigned char myrs_get_pdev_info (struct myrs_hba*,scalar_t__,int ,int ,struct myrs_pdev_info*) ;
 int myrs_raid_template ;
 unsigned short myrs_translate_ldev (struct myrs_hba*,struct scsi_device*) ;
 int raid_set_level (int ,int *,int) ;
 int sdev_printk (int ,struct scsi_device*,char*,char const*) ;
 struct myrs_hba* shost_priv (TYPE_2__*) ;

__attribute__((used)) static int myrs_slave_alloc(struct scsi_device *sdev)
{
 struct myrs_hba *cs = shost_priv(sdev->host);
 unsigned char status;

 if (sdev->channel > sdev->host->max_channel)
  return 0;

 if (sdev->channel >= cs->ctlr_info->physchan_present) {
  struct myrs_ldev_info *ldev_info;
  unsigned short ldev_num;

  if (sdev->lun > 0)
   return -ENXIO;

  ldev_num = myrs_translate_ldev(cs, sdev);

  ldev_info = kzalloc(sizeof(*ldev_info), GFP_KERNEL|GFP_DMA);
  if (!ldev_info)
   return -ENOMEM;

  status = myrs_get_ldev_info(cs, ldev_num, ldev_info);
  if (status != MYRS_STATUS_SUCCESS) {
   sdev->hostdata = ((void*)0);
   kfree(ldev_info);
  } else {
   enum raid_level level;

   dev_dbg(&sdev->sdev_gendev,
    "Logical device mapping %d:%d:%d -> %d\n",
    ldev_info->channel, ldev_info->target,
    ldev_info->lun, ldev_info->ldev_num);

   sdev->hostdata = ldev_info;
   switch (ldev_info->raid_level) {
   case 138:
    level = RAID_LEVEL_LINEAR;
    break;
   case 137:
    level = RAID_LEVEL_1;
    break;
   case 136:
   case 135:
   case 134:
    level = RAID_LEVEL_3;
    break;
   case 133:
   case 132:
    level = RAID_LEVEL_5;
    break;
   case 131:
    level = RAID_LEVEL_6;
    break;
   case 130:
   case 129:
   case 128:
    level = RAID_LEVEL_LINEAR;
    break;
   case 139:
    level = RAID_LEVEL_JBOD;
    break;
   default:
    level = RAID_LEVEL_UNKNOWN;
    break;
   }
   raid_set_level(myrs_raid_template,
           &sdev->sdev_gendev, level);
   if (ldev_info->dev_state != MYRS_DEVICE_ONLINE) {
    const char *name;

    name = myrs_devstate_name(ldev_info->dev_state);
    sdev_printk(KERN_DEBUG, sdev,
         "logical device in state %s\n",
         name ? name : "Invalid");
   }
  }
 } else {
  struct myrs_pdev_info *pdev_info;

  pdev_info = kzalloc(sizeof(*pdev_info), GFP_KERNEL|GFP_DMA);
  if (!pdev_info)
   return -ENOMEM;

  status = myrs_get_pdev_info(cs, sdev->channel,
         sdev->id, sdev->lun,
         pdev_info);
  if (status != MYRS_STATUS_SUCCESS) {
   sdev->hostdata = ((void*)0);
   kfree(pdev_info);
   return -ENXIO;
  }
  sdev->hostdata = pdev_info;
 }
 return 0;
}
