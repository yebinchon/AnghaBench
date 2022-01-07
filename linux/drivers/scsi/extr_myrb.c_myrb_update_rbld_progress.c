
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct myrb_rbld_progress {unsigned int ldev_size; unsigned int blocks_left; int ldev_num; } ;
struct myrb_hba {int last_rbld_status; int host; } ;


 int KERN_INFO ;
 unsigned short MYRB_NO_STDBY_RBLD_OR_CHECK_IN_PROGRESS ;






 unsigned short myrb_get_rbld_progress (struct myrb_hba*,struct myrb_rbld_progress*) ;
 int myrb_logical_channel (int ) ;
 struct scsi_device* scsi_device_lookup (int ,int ,int ,int ) ;
 int scsi_device_put (struct scsi_device*) ;
 int sdev_printk (int ,struct scsi_device*,char*,...) ;

__attribute__((used)) static void myrb_update_rbld_progress(struct myrb_hba *cb)
{
 struct myrb_rbld_progress rbld_buf;
 unsigned short status;

 status = myrb_get_rbld_progress(cb, &rbld_buf);
 if (status == MYRB_NO_STDBY_RBLD_OR_CHECK_IN_PROGRESS &&
     cb->last_rbld_status == 128)
  status = 130;
 if (status != MYRB_NO_STDBY_RBLD_OR_CHECK_IN_PROGRESS) {
  unsigned int blocks_done =
   rbld_buf.ldev_size - rbld_buf.blocks_left;
  struct scsi_device *sdev;

  sdev = scsi_device_lookup(cb->host,
       myrb_logical_channel(cb->host),
       rbld_buf.ldev_num, 0);
  if (!sdev)
   return;

  switch (status) {
  case 128:
   sdev_printk(KERN_INFO, sdev,
        "Rebuild in Progress, %d%% completed\n",
        (100 * (blocks_done >> 7))
        / (rbld_buf.ldev_size >> 7));
   break;
  case 132:
   sdev_printk(KERN_INFO, sdev,
        "Rebuild Failed due to Logical Drive Failure\n");
   break;
  case 133:
   sdev_printk(KERN_INFO, sdev,
        "Rebuild Failed due to Bad Blocks on Other Drives\n");
   break;
  case 131:
   sdev_printk(KERN_INFO, sdev,
        "Rebuild Failed due to Failure of Drive Being Rebuilt\n");
   break;
  case 130:
   sdev_printk(KERN_INFO, sdev,
        "Rebuild Completed Successfully\n");
   break;
  case 129:
   sdev_printk(KERN_INFO, sdev,
         "Rebuild Successfully Terminated\n");
   break;
  default:
   break;
  }
  scsi_device_put(sdev);
 }
 cb->last_rbld_status = status;
}
