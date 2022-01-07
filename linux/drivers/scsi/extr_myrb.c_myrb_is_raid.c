
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ channel; int host; } ;
struct device {int dummy; } ;


 scalar_t__ myrb_logical_channel (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int myrb_is_raid(struct device *dev)
{
 struct scsi_device *sdev = to_scsi_device(dev);

 return sdev->channel == myrb_logical_channel(sdev->host);
}
