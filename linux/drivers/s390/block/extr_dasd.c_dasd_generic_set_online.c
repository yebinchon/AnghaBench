
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_discipline {int (* check_device ) (struct dasd_device*) ;int owner; int name; } ;
struct dasd_device {int features; scalar_t__ state; scalar_t__ block; struct dasd_discipline* discipline; struct dasd_discipline* base_discipline; } ;
struct ccw_device {int dev; } ;


 int DASD_DIAG_MOD ;
 int DASD_FEATURE_INITIAL_ONLINE ;
 int DASD_FEATURE_USEDIAG ;
 scalar_t__ DASD_STATE_KNOWN ;
 int DASD_STATE_NEW ;
 int DASD_STATE_ONLINE ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int PTR_ERR (struct dasd_device*) ;
 int _wait_for_device (struct dasd_device*) ;
 struct dasd_device* dasd_create_device (struct ccw_device*) ;
 int dasd_delete_device (struct dasd_device*) ;
 struct dasd_discipline* dasd_diag_discipline_pointer ;
 int dasd_free_block (scalar_t__) ;
 int dasd_init_waitq ;
 int dasd_put_device (struct dasd_device*) ;
 int dasd_set_feature (struct ccw_device*,int ,int ) ;
 int dasd_set_target_state (struct dasd_device*,int ) ;
 int dev_name (int *) ;
 int module_put (int ) ;
 int pr_debug (char*,int ) ;
 int pr_warn (char*,int ,...) ;
 int request_module (int ) ;
 int stub1 (struct dasd_device*) ;
 int try_module_get (int ) ;
 int wait_event (int ,int ) ;

int dasd_generic_set_online(struct ccw_device *cdev,
       struct dasd_discipline *base_discipline)
{
 struct dasd_discipline *discipline;
 struct dasd_device *device;
 int rc;


 dasd_set_feature(cdev, DASD_FEATURE_INITIAL_ONLINE, 0);
 device = dasd_create_device(cdev);
 if (IS_ERR(device))
  return PTR_ERR(device);

 discipline = base_discipline;
 if (device->features & DASD_FEATURE_USEDIAG) {
    if (!dasd_diag_discipline_pointer) {

   rc = request_module(DASD_DIAG_MOD);
   if (rc) {
    pr_warn("%s Setting the DASD online failed "
     "because the required module %s "
     "could not be loaded (rc=%d)\n",
     dev_name(&cdev->dev), DASD_DIAG_MOD,
     rc);
    dasd_delete_device(device);
    return -ENODEV;
   }
  }


  if (!dasd_diag_discipline_pointer) {
   pr_warn("%s Setting the DASD online failed because of missing DIAG discipline\n",
    dev_name(&cdev->dev));
   dasd_delete_device(device);
   return -ENODEV;
  }
  discipline = dasd_diag_discipline_pointer;
 }
 if (!try_module_get(base_discipline->owner)) {
  dasd_delete_device(device);
  return -EINVAL;
 }
 if (!try_module_get(discipline->owner)) {
  module_put(base_discipline->owner);
  dasd_delete_device(device);
  return -EINVAL;
 }
 device->base_discipline = base_discipline;
 device->discipline = discipline;


 rc = discipline->check_device(device);
 if (rc) {
  pr_warn("%s Setting the DASD online with discipline %s failed with rc=%i\n",
   dev_name(&cdev->dev), discipline->name, rc);
  module_put(discipline->owner);
  module_put(base_discipline->owner);
  dasd_delete_device(device);
  return rc;
 }

 dasd_set_target_state(device, DASD_STATE_ONLINE);
 if (device->state <= DASD_STATE_KNOWN) {
  pr_warn("%s Setting the DASD online failed because of a missing discipline\n",
   dev_name(&cdev->dev));
  rc = -ENODEV;
  dasd_set_target_state(device, DASD_STATE_NEW);
  if (device->block)
   dasd_free_block(device->block);
  dasd_delete_device(device);
 } else
  pr_debug("dasd_generic device %s found\n",
    dev_name(&cdev->dev));

 wait_event(dasd_init_waitq, _wait_for_device(device));

 dasd_put_device(device);
 return rc;
}
