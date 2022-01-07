
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {struct myrb_ldev_info* hostdata; } ;
struct myrb_ldev_info {scalar_t__ state; scalar_t__ wb_enabled; } ;
struct myrb_hba {struct myrb_ldev_info* ldev_info_buf; int ldev_info_addr; struct Scsi_Host* host; TYPE_1__* enquiry; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int ldev_count; } ;


 int KERN_INFO ;
 int MYRB_CMD_GET_LDEV_INFO ;
 scalar_t__ MYRB_DEVICE_OFFLINE ;
 unsigned short MYRB_STATUS_SUCCESS ;
 int memcpy (struct myrb_ldev_info*,struct myrb_ldev_info*,int) ;
 int myrb_devstate_name (scalar_t__) ;
 unsigned short myrb_exec_type3 (struct myrb_hba*,int ,int ) ;
 int myrb_logical_channel (struct Scsi_Host*) ;
 int scsi_add_device (struct Scsi_Host*,int ,int,int ) ;
 struct scsi_device* scsi_device_lookup (struct Scsi_Host*,int ,int,int ) ;
 int scsi_device_put (struct scsi_device*) ;
 int sdev_printk (int ,struct scsi_device*,char*,char*) ;
 int shost_printk (int ,struct Scsi_Host*,char*,int,int ) ;

__attribute__((used)) static unsigned short myrb_get_ldev_info(struct myrb_hba *cb)
{
 unsigned short status;
 int ldev_num, ldev_cnt = cb->enquiry->ldev_count;
 struct Scsi_Host *shost = cb->host;

 status = myrb_exec_type3(cb, MYRB_CMD_GET_LDEV_INFO,
     cb->ldev_info_addr);
 if (status != MYRB_STATUS_SUCCESS)
  return status;

 for (ldev_num = 0; ldev_num < ldev_cnt; ldev_num++) {
  struct myrb_ldev_info *old = ((void*)0);
  struct myrb_ldev_info *new = cb->ldev_info_buf + ldev_num;
  struct scsi_device *sdev;

  sdev = scsi_device_lookup(shost, myrb_logical_channel(shost),
       ldev_num, 0);
  if (!sdev) {
   if (new->state == MYRB_DEVICE_OFFLINE)
    continue;
   shost_printk(KERN_INFO, shost,
         "Adding Logical Drive %d in state %s\n",
         ldev_num, myrb_devstate_name(new->state));
   scsi_add_device(shost, myrb_logical_channel(shost),
     ldev_num, 0);
   continue;
  }
  old = sdev->hostdata;
  if (new->state != old->state)
   shost_printk(KERN_INFO, shost,
         "Logical Drive %d is now %s\n",
         ldev_num, myrb_devstate_name(new->state));
  if (new->wb_enabled != old->wb_enabled)
   sdev_printk(KERN_INFO, sdev,
        "Logical Drive is now WRITE %s\n",
        (new->wb_enabled ? "BACK" : "THRU"));
  memcpy(old, new, sizeof(*new));
  scsi_device_put(sdev);
 }
 return status;
}
