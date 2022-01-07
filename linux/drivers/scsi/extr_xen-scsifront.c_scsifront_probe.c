
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int dev; } ;
struct vscsifrnt_info {int host_active; struct Scsi_Host* host; int shadow_lock; int wq_pause; int wq_sync; int shadow_free_bitmap; struct xenbus_device* dev; } ;
struct Scsi_Host {int host_no; int max_sectors; int sg_tablesize; int max_cmd_len; int max_lun; scalar_t__ max_channel; int max_id; scalar_t__ hostdata; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int TASK_COMM_LEN ;
 int VSCSIIF_MAX_COMMAND_SIZE ;
 int VSCSIIF_MAX_LUN ;
 int VSCSIIF_MAX_REQS ;
 int VSCSIIF_MAX_TARGET ;
 int XenbusStateInitialised ;
 int bitmap_fill (int ,int ) ;
 int dev_err (int *,char*,int) ;
 int dev_set_drvdata (int *,struct vscsifrnt_info*) ;
 int init_waitqueue_head (int *) ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsifront_free_ring (struct vscsifrnt_info*) ;
 int scsifront_init_ring (struct vscsifrnt_info*) ;
 int scsifront_sht ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_init (int *) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*) ;
 int xenbus_switch_state (struct xenbus_device*,int ) ;

__attribute__((used)) static int scsifront_probe(struct xenbus_device *dev,
      const struct xenbus_device_id *id)
{
 struct vscsifrnt_info *info;
 struct Scsi_Host *host;
 int err = -ENOMEM;
 char name[TASK_COMM_LEN];

 host = scsi_host_alloc(&scsifront_sht, sizeof(*info));
 if (!host) {
  xenbus_dev_fatal(dev, err, "fail to allocate scsi host");
  return err;
 }
 info = (struct vscsifrnt_info *)host->hostdata;

 dev_set_drvdata(&dev->dev, info);
 info->dev = dev;

 bitmap_fill(info->shadow_free_bitmap, VSCSIIF_MAX_REQS);

 err = scsifront_init_ring(info);
 if (err) {
  scsi_host_put(host);
  return err;
 }

 init_waitqueue_head(&info->wq_sync);
 init_waitqueue_head(&info->wq_pause);
 spin_lock_init(&info->shadow_lock);

 snprintf(name, TASK_COMM_LEN, "vscsiif.%d", host->host_no);

 host->max_id = VSCSIIF_MAX_TARGET;
 host->max_channel = 0;
 host->max_lun = VSCSIIF_MAX_LUN;
 host->max_sectors = (host->sg_tablesize - 1) * PAGE_SIZE / 512;
 host->max_cmd_len = VSCSIIF_MAX_COMMAND_SIZE;

 err = scsi_add_host(host, &dev->dev);
 if (err) {
  dev_err(&dev->dev, "fail to add scsi host %d\n", err);
  goto free_sring;
 }
 info->host = host;
 info->host_active = 1;

 xenbus_switch_state(dev, XenbusStateInitialised);

 return 0;

free_sring:
 scsifront_free_ring(info);
 scsi_host_put(host);
 return err;
}
