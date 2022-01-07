
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct aac_dev {int dummy; } ;


 struct scsi_device* aac_lookup_safw_scsi_device (struct aac_dev*,int,int) ;
 int aac_put_safw_scsi_device (struct scsi_device*) ;

__attribute__((used)) static int aac_is_safw_device_exposed(struct aac_dev *dev, int bus, int target)
{
 int is_exposed = 0;
 struct scsi_device *sdev;

 sdev = aac_lookup_safw_scsi_device(dev, bus, target);
 if (sdev)
  is_exposed = 1;
 aac_put_safw_scsi_device(sdev);

 return is_exposed;
}
