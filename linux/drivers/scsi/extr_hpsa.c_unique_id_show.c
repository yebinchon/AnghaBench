
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct hpsa_scsi_dev_t* hostdata; } ;
struct hpsa_scsi_dev_t {int device_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int lock; } ;
typedef int ssize_t ;
typedef int sn ;


 int ENODEV ;
 int memcpy (unsigned char*,int ,int) ;
 struct ctlr_info* sdev_to_hba (struct scsi_device*) ;
 int snprintf (char*,int,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t unique_id_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct ctlr_info *h;
 struct scsi_device *sdev;
 struct hpsa_scsi_dev_t *hdev;
 unsigned long flags;
 unsigned char sn[16];

 sdev = to_scsi_device(dev);
 h = sdev_to_hba(sdev);
 spin_lock_irqsave(&h->lock, flags);
 hdev = sdev->hostdata;
 if (!hdev) {
  spin_unlock_irqrestore(&h->lock, flags);
  return -ENODEV;
 }
 memcpy(sn, hdev->device_id, sizeof(sn));
 spin_unlock_irqrestore(&h->lock, flags);
 return snprintf(buf, 16 * 2 + 2,
   "%02X%02X%02X%02X%02X%02X%02X%02X"
   "%02X%02X%02X%02X%02X%02X%02X%02X\n",
   sn[0], sn[1], sn[2], sn[3],
   sn[4], sn[5], sn[6], sn[7],
   sn[8], sn[9], sn[10], sn[11],
   sn[12], sn[13], sn[14], sn[15]);
}
