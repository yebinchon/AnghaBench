
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ sdev_bflags; } ;
struct scsi_dev_info_list {scalar_t__ flags; } ;
typedef enum scsi_devinfo_key { ____Placeholder_scsi_devinfo_key } scsi_devinfo_key ;
typedef scalar_t__ blist_flags_t ;


 int IS_ERR (struct scsi_dev_info_list*) ;
 int SCSI_DEVINFO_GLOBAL ;
 scalar_t__ scsi_default_dev_flags ;
 struct scsi_dev_info_list* scsi_dev_info_list_find (unsigned char const*,unsigned char const*,int) ;

blist_flags_t scsi_get_device_flags_keyed(struct scsi_device *sdev,
    const unsigned char *vendor,
    const unsigned char *model,
    enum scsi_devinfo_key key)
{
 struct scsi_dev_info_list *devinfo;

 devinfo = scsi_dev_info_list_find(vendor, model, key);
 if (!IS_ERR(devinfo))
  return devinfo->flags;


 if (key != SCSI_DEVINFO_GLOBAL)
  return 0;


 if (sdev->sdev_bflags)
  return sdev->sdev_bflags;

 return scsi_default_dev_flags;
}
