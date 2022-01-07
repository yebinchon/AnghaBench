
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_wwn {struct se_device* t10_dev; } ;
struct TYPE_2__ {unsigned char* unit_serial; } ;
struct se_device {int dev_flags; int export_count; TYPE_1__ t10_wwn; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 int DF_EMULATED_VPD_UNIT_SERIAL ;
 int DF_FIRMWARE_VPD_UNIT_SERIAL ;
 size_t EINVAL ;
 size_t EOPNOTSUPP ;
 size_t EOVERFLOW ;
 int INQUIRY_VPD_SERIAL_LEN ;
 int memset (unsigned char*,int ,int) ;
 int pr_debug (char*,unsigned char*) ;
 int pr_err (char*,...) ;
 int snprintf (unsigned char*,int,char*,char const*) ;
 int strlen (char const*) ;
 char* strstrip (unsigned char*) ;
 struct t10_wwn* to_t10_wwn (struct config_item*) ;

__attribute__((used)) static ssize_t target_wwn_vpd_unit_serial_store(struct config_item *item,
  const char *page, size_t count)
{
 struct t10_wwn *t10_wwn = to_t10_wwn(item);
 struct se_device *dev = t10_wwn->t10_dev;
 unsigned char buf[INQUIRY_VPD_SERIAL_LEN];
 if (dev->dev_flags & DF_FIRMWARE_VPD_UNIT_SERIAL) {
  pr_err("Underlying SCSI device firmware provided VPD"
   " Unit Serial, ignoring request\n");
  return -EOPNOTSUPP;
 }

 if (strlen(page) >= INQUIRY_VPD_SERIAL_LEN) {
  pr_err("Emulated VPD Unit Serial exceeds"
  " INQUIRY_VPD_SERIAL_LEN: %d\n", INQUIRY_VPD_SERIAL_LEN);
  return -EOVERFLOW;
 }






 if (dev->export_count) {
  pr_err("Unable to set VPD Unit Serial while"
   " active %d $FABRIC_MOD exports exist\n",
   dev->export_count);
  return -EINVAL;
 }







 memset(buf, 0, INQUIRY_VPD_SERIAL_LEN);
 snprintf(buf, INQUIRY_VPD_SERIAL_LEN, "%s", page);
 snprintf(dev->t10_wwn.unit_serial, INQUIRY_VPD_SERIAL_LEN,
   "%s", strstrip(buf));
 dev->dev_flags |= DF_EMULATED_VPD_UNIT_SERIAL;

 pr_debug("Target_Core_ConfigFS: Set emulated VPD Unit Serial:"
   " %s\n", dev->t10_wwn.unit_serial);

 return count;
}
