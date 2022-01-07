
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ channel; int host; } ;
struct device {int dummy; } ;
struct MPT3SAS_ADAPTER {scalar_t__ is_warpdrive; } ;


 scalar_t__ RAID_CHANNEL ;
 struct MPT3SAS_ADAPTER* shost_priv (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int
scsih_is_raid(struct device *dev)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(sdev->host);

 if (ioc->is_warpdrive)
  return 0;
 return (sdev->channel == RAID_CHANNEL) ? 1 : 0;
}
