
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct us_unusual_dev {int dummy; } ;
struct us_data {int scan_dwork; int delay_wait; int notify; int cmnd_ready; int dev_mutex; } ;
struct scsi_host_template {int dummy; } ;
struct Scsi_Host {int max_cmd_len; int sg_tablesize; } ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int associate_dev (struct us_data*,struct usb_interface*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int get_device_info (struct us_data*,struct usb_device_id const*,struct us_unusual_dev*) ;
 int get_protocol (struct us_data*) ;
 int get_transport (struct us_data*) ;
 struct us_data* host_to_us (struct Scsi_Host*) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int release_everything (struct us_data*) ;
 struct Scsi_Host* scsi_host_alloc (struct scsi_host_template*,int) ;
 int us_set_lock_class (int *,struct usb_interface*) ;
 int usb_stor_dbg (struct us_data*,char*) ;
 int usb_stor_scan_dwork ;
 int usb_stor_sg_tablesize (struct usb_interface*) ;

int usb_stor_probe1(struct us_data **pus,
  struct usb_interface *intf,
  const struct usb_device_id *id,
  struct us_unusual_dev *unusual_dev,
  struct scsi_host_template *sht)
{
 struct Scsi_Host *host;
 struct us_data *us;
 int result;

 dev_info(&intf->dev, "USB Mass Storage device detected\n");





 host = scsi_host_alloc(sht, sizeof(*us));
 if (!host) {
  dev_warn(&intf->dev, "Unable to allocate the scsi host\n");
  return -ENOMEM;
 }




 host->max_cmd_len = 16;
 host->sg_tablesize = usb_stor_sg_tablesize(intf);
 *pus = us = host_to_us(host);
 mutex_init(&(us->dev_mutex));
 us_set_lock_class(&us->dev_mutex, intf);
 init_completion(&us->cmnd_ready);
 init_completion(&(us->notify));
 init_waitqueue_head(&us->delay_wait);
 INIT_DELAYED_WORK(&us->scan_dwork, usb_stor_scan_dwork);


 result = associate_dev(us, intf);
 if (result)
  goto BadDevice;


 result = get_device_info(us, id, unusual_dev);
 if (result)
  goto BadDevice;


 get_transport(us);
 get_protocol(us);





 return 0;

BadDevice:
 usb_stor_dbg(us, "storage_probe() failed\n");
 release_everything(us);
 return result;
}
