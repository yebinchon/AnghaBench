
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct us_data {scalar_t__ transport; int fflags; int max_lun; TYPE_1__* pusb_intf; int scan_dwork; int dflags; int scsi_name; int protocol_name; int transport_name; int proto_handler; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int this_id; int max_id; int no_scsi2_lun_in_cdb; } ;
struct TYPE_5__ {struct device dev; } ;


 int ENXIO ;
 int HZ ;
 int US_FLIDX_REDO_READ10 ;
 int US_FLIDX_SCAN_PENDING ;
 int US_FL_INITIAL_READ10 ;
 int US_FL_SCM_MULT_TARG ;
 int US_FL_SINGLE_LUN ;
 int delay_use ;
 int dev_dbg (struct device*,char*) ;
 char* dev_name (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int get_pipes (struct us_data*) ;
 int queue_delayed_work (int ,int *,int) ;
 int release_everything (struct us_data*) ;
 int scsi_add_host (TYPE_3__*,struct device*) ;
 int set_bit (int ,int *) ;
 int snprintf (int ,int,char*,char*) ;
 int system_freezable_wq ;
 TYPE_3__* us_to_host (struct us_data*) ;
 int usb_autopm_get_interface_no_resume (TYPE_1__*) ;
 int usb_autopm_put_interface_no_suspend (TYPE_1__*) ;
 scalar_t__ usb_stor_Bulk_transport ;
 int usb_stor_acquire_resources (struct us_data*) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

int usb_stor_probe2(struct us_data *us)
{
 int result;
 struct device *dev = &us->pusb_intf->dev;


 if (!us->transport || !us->proto_handler) {
  result = -ENXIO;
  goto BadDevice;
 }
 usb_stor_dbg(us, "Transport: %s\n", us->transport_name);
 usb_stor_dbg(us, "Protocol: %s\n", us->protocol_name);

 if (us->fflags & US_FL_SCM_MULT_TARG) {




  us->max_lun = 7;

  us_to_host(us)->this_id = 7;

 } else {

  us_to_host(us)->max_id = 1;





  if (us->transport == usb_stor_Bulk_transport)
   us_to_host(us)->no_scsi2_lun_in_cdb = 1;
 }


 if (us->fflags & US_FL_SINGLE_LUN)
  us->max_lun = 0;


 result = get_pipes(us);
 if (result)
  goto BadDevice;





 if (us->fflags & US_FL_INITIAL_READ10)
  set_bit(US_FLIDX_REDO_READ10, &us->dflags);


 result = usb_stor_acquire_resources(us);
 if (result)
  goto BadDevice;
 usb_autopm_get_interface_no_resume(us->pusb_intf);
 snprintf(us->scsi_name, sizeof(us->scsi_name), "usb-storage %s",
     dev_name(&us->pusb_intf->dev));
 result = scsi_add_host(us_to_host(us), dev);
 if (result) {
  dev_warn(dev,
    "Unable to add the scsi host\n");
  goto HostAddErr;
 }


 set_bit(US_FLIDX_SCAN_PENDING, &us->dflags);

 if (delay_use > 0)
  dev_dbg(dev, "waiting for device to settle before scanning\n");
 queue_delayed_work(system_freezable_wq, &us->scan_dwork,
   delay_use * HZ);
 return 0;


HostAddErr:
 usb_autopm_put_interface_no_suspend(us->pusb_intf);
BadDevice:
 usb_stor_dbg(us, "storage_probe() failed\n");
 release_everything(us);
 return result;
}
