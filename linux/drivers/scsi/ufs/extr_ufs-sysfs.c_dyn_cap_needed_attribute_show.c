
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ufs_hba {int dummy; } ;
struct scsi_device {int lun; int host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int QUERY_ATTR_IDN_DYN_CAP_NEEDED ;
 int UPIU_QUERY_OPCODE_READ_ATTR ;
 struct ufs_hba* shost_priv (int ) ;
 int sprintf (char*,char*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;
 scalar_t__ ufshcd_query_attr (struct ufs_hba*,int ,int ,int ,int ,int*) ;
 int ufshcd_scsi_to_upiu_lun (int ) ;

__attribute__((used)) static ssize_t dyn_cap_needed_attribute_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 u32 value;
 struct scsi_device *sdev = to_scsi_device(dev);
 struct ufs_hba *hba = shost_priv(sdev->host);
 u8 lun = ufshcd_scsi_to_upiu_lun(sdev->lun);

 if (ufshcd_query_attr(hba, UPIU_QUERY_OPCODE_READ_ATTR,
  QUERY_ATTR_IDN_DYN_CAP_NEEDED, lun, 0, &value))
  return -EINVAL;
 return sprintf(buf, "0x%08X\n", value);
}
