
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int host; } ;
struct myrs_hba {int disable_enc_msg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int kstrtoint (char const*,int ,int*) ;
 struct myrs_hba* shost_priv (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t disable_enclosure_messages_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct myrs_hba *cs = shost_priv(sdev->host);
 int value, ret;

 ret = kstrtoint(buf, 0, &value);
 if (ret)
  return ret;

 if (value > 2)
  return -EINVAL;

 cs->disable_enc_msg = value;
 return count;
}
