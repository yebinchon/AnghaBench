
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct MPT3SAS_DEVICE* hostdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct MPT3SAS_DEVICE {int ncq_prio_enable; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ kstrtobool (char const*,int*) ;
 int scsih_ncq_prio_supp (struct scsi_device*) ;
 int strlen (char const*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
sas_ncq_prio_enable_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct MPT3SAS_DEVICE *sas_device_priv_data = sdev->hostdata;
 bool ncq_prio_enable = 0;

 if (kstrtobool(buf, &ncq_prio_enable))
  return -EINVAL;

 if (!scsih_ncq_prio_supp(sdev))
  return -EINVAL;

 sas_device_priv_data->ncq_prio_enable = ncq_prio_enable;
 return strlen(buf);
}
