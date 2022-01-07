
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int temp_rdc_data ;
struct dasd_uid {int dummy; } ;
struct dasd_eckd_private {int rdc_data; int uid; } ;
struct dasd_eckd_characteristics {int dummy; } ;
struct dasd_device {TYPE_1__* cdev; struct dasd_eckd_private* private; } ;
struct TYPE_3__ {int dev; } ;


 int DASD_CQR_FLAGS_FAILFAST ;
 int DASD_ECKD_MAGIC ;
 int DBF_EVENT_DEVID (int ,TYPE_1__*,char*,int) ;
 int DBF_WARNING ;
 int dasd_alias_add_device (struct dasd_device*) ;
 int dasd_alias_disconnect_device_from_lcu (struct dasd_device*) ;
 int dasd_alias_make_device_known_to_lcu (struct dasd_device*) ;
 int dasd_eckd_generate_uid (struct dasd_device*) ;
 int dasd_eckd_get_uid (struct dasd_device*,struct dasd_uid*) ;
 int dasd_eckd_read_conf (struct dasd_device*) ;
 int dasd_eckd_read_ext_pool_info (struct dasd_device*) ;
 int dasd_eckd_read_features (struct dasd_device*) ;
 int dasd_eckd_read_vol_info (struct dasd_device*) ;
 int dasd_eckd_validate_server (struct dasd_device*,unsigned long) ;
 int dasd_generic_read_dev_chars (struct dasd_device*,int ,struct dasd_eckd_characteristics*,int) ;
 int dev_err (int *,char*) ;
 int get_ccwdev_lock (TYPE_1__*) ;
 scalar_t__ memcmp (int *,struct dasd_uid*,int) ;
 int memcpy (int *,struct dasd_eckd_characteristics*,int) ;
 int set_bit (int ,unsigned long*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int dasd_eckd_restore_device(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 struct dasd_eckd_characteristics temp_rdc_data;
 int rc;
 struct dasd_uid temp_uid;
 unsigned long flags;
 unsigned long cqr_flags = 0;


 rc = dasd_eckd_read_conf(device);
 if (rc) {
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev,
    "Read configuration data failed, rc=%d", rc);
  goto out_err;
 }

 dasd_eckd_get_uid(device, &temp_uid);

 rc = dasd_eckd_generate_uid(device);
 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 if (memcmp(&private->uid, &temp_uid, sizeof(struct dasd_uid)) != 0)
  dev_err(&device->cdev->dev, "The UID of the DASD has "
   "changed\n");
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
 if (rc)
  goto out_err;


 rc = dasd_alias_make_device_known_to_lcu(device);
 if (rc)
  goto out_err;

 set_bit(DASD_CQR_FLAGS_FAILFAST, &cqr_flags);
 dasd_eckd_validate_server(device, cqr_flags);


 rc = dasd_eckd_read_conf(device);
 if (rc) {
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev,
   "Read configuration data failed, rc=%d", rc);
  goto out_err2;
 }


 dasd_eckd_read_features(device);


 dasd_eckd_read_vol_info(device);


 dasd_eckd_read_ext_pool_info(device);


 rc = dasd_generic_read_dev_chars(device, DASD_ECKD_MAGIC,
      &temp_rdc_data, 64);
 if (rc) {
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev,
    "Read device characteristic failed, rc=%d", rc);
  goto out_err2;
 }
 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 memcpy(&private->rdc_data, &temp_rdc_data, sizeof(temp_rdc_data));
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);


 dasd_alias_add_device(device);

 return 0;

out_err2:
 dasd_alias_disconnect_device_from_lcu(device);
out_err:
 return -1;
}
