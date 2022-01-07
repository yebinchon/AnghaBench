
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {TYPE_1__* host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aac_dev {TYPE_2__* fsa_dev; } ;
typedef int ssize_t ;
typedef int sn ;
struct TYPE_4__ {int identifier; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 scalar_t__ CONTAINER_CHANNEL ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ sdev_channel (struct scsi_device*) ;
 size_t sdev_id (struct scsi_device*) ;
 int snprintf (char*,int,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t aac_show_unique_id(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct aac_dev *aac = (struct aac_dev *)(sdev->host->hostdata);
 unsigned char sn[16];

 memset(sn, 0, sizeof(sn));

 if (sdev_channel(sdev) == CONTAINER_CHANNEL)
  memcpy(sn, aac->fsa_dev[sdev_id(sdev)].identifier, sizeof(sn));

 return snprintf(buf, 16 * 2 + 2,
  "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\n",
  sn[0], sn[1], sn[2], sn[3],
  sn[4], sn[5], sn[6], sn[7],
  sn[8], sn[9], sn[10], sn[11],
  sn[12], sn[13], sn[14], sn[15]);
}
