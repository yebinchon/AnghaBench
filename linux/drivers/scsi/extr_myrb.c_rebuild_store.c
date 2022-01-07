
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rbld_rate; int addr; void* id; int opcode; } ;
struct TYPE_3__ {scalar_t__ channel; int target; void* id; int opcode; } ;
union myrb_cmd_mbox {TYPE_2__ type3R; TYPE_1__ type3D; } ;
struct scsi_device {scalar_t__ channel; int id; int host; } ;
struct pci_dev {int dev; } ;
struct myrb_cmdblk {union myrb_cmd_mbox mbox; } ;
struct myrb_hba {int dcmd_mutex; struct myrb_cmdblk dcmd_blk; struct pci_dev* pdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int dma_addr_t ;


 int EALREADY ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int KERN_INFO ;
 int MYRB_CMD_REBUILD_ASYNC ;
 int MYRB_CMD_REBUILD_CONTROL ;
 void* MYRB_DCMD_TAG ;




 unsigned short MYRB_STATUS_SUCCESS ;
 unsigned char* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,unsigned char*,int ) ;
 int kstrtoint (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned short myrb_exec_cmd (struct myrb_hba*,struct myrb_cmdblk*) ;
 unsigned short myrb_get_rbld_progress (struct myrb_hba*,int *) ;
 scalar_t__ myrb_logical_channel (int ) ;
 int myrb_reset_cmd (struct myrb_cmdblk*) ;
 int sdev_printk (int ,struct scsi_device*,char*,...) ;
 struct myrb_hba* shost_priv (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t rebuild_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct myrb_hba *cb = shost_priv(sdev->host);
 struct myrb_cmdblk *cmd_blk;
 union myrb_cmd_mbox *mbox;
 unsigned short status;
 int rc, start;
 const char *msg;

 rc = kstrtoint(buf, 0, &start);
 if (rc)
  return rc;

 if (sdev->channel >= myrb_logical_channel(sdev->host))
  return -ENXIO;

 status = myrb_get_rbld_progress(cb, ((void*)0));
 if (start) {
  if (status == MYRB_STATUS_SUCCESS) {
   sdev_printk(KERN_INFO, sdev,
        "Rebuild Not Initiated; already in progress\n");
   return -EALREADY;
  }
  mutex_lock(&cb->dcmd_mutex);
  cmd_blk = &cb->dcmd_blk;
  myrb_reset_cmd(cmd_blk);
  mbox = &cmd_blk->mbox;
  mbox->type3D.opcode = MYRB_CMD_REBUILD_ASYNC;
  mbox->type3D.id = MYRB_DCMD_TAG;
  mbox->type3D.channel = sdev->channel;
  mbox->type3D.target = sdev->id;
  status = myrb_exec_cmd(cb, cmd_blk);
  mutex_unlock(&cb->dcmd_mutex);
 } else {
  struct pci_dev *pdev = cb->pdev;
  unsigned char *rate;
  dma_addr_t rate_addr;

  if (status != MYRB_STATUS_SUCCESS) {
   sdev_printk(KERN_INFO, sdev,
        "Rebuild Not Cancelled; not in progress\n");
   return 0;
  }

  rate = dma_alloc_coherent(&pdev->dev, sizeof(char),
       &rate_addr, GFP_KERNEL);
  if (rate == ((void*)0)) {
   sdev_printk(KERN_INFO, sdev,
        "Cancellation of Rebuild Failed - Out of Memory\n");
   return -ENOMEM;
  }
  mutex_lock(&cb->dcmd_mutex);
  cmd_blk = &cb->dcmd_blk;
  myrb_reset_cmd(cmd_blk);
  mbox = &cmd_blk->mbox;
  mbox->type3R.opcode = MYRB_CMD_REBUILD_CONTROL;
  mbox->type3R.id = MYRB_DCMD_TAG;
  mbox->type3R.rbld_rate = 0xFF;
  mbox->type3R.addr = rate_addr;
  status = myrb_exec_cmd(cb, cmd_blk);
  dma_free_coherent(&pdev->dev, sizeof(char), rate, rate_addr);
  mutex_unlock(&cb->dcmd_mutex);
 }
 if (status == MYRB_STATUS_SUCCESS) {
  sdev_printk(KERN_INFO, sdev, "Rebuild %s\n",
       start ? "Initiated" : "Cancelled");
  return count;
 }
 if (!start) {
  sdev_printk(KERN_INFO, sdev,
       "Rebuild Not Cancelled, status 0x%x\n",
       status);
  return -EIO;
 }

 switch (status) {
 case 131:
  msg = "Attempt to Rebuild Online or Unresponsive Drive";
  break;
 case 129:
  msg = "New Disk Failed During Rebuild";
  break;
 case 130:
  msg = "Invalid Device Address";
  break;
 case 128:
  msg = "Already in Progress";
  break;
 default:
  msg = ((void*)0);
  break;
 }
 if (msg)
  sdev_printk(KERN_INFO, sdev,
       "Rebuild Failed - %s\n", msg);
 else
  sdev_printk(KERN_INFO, sdev,
       "Rebuild Failed, status 0x%x\n", status);

 return -EIO;
}
