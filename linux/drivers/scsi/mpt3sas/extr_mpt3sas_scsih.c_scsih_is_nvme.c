
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ channel; } ;
struct device {int dummy; } ;


 scalar_t__ PCIE_CHANNEL ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int
scsih_is_nvme(struct device *dev)
{
 struct scsi_device *sdev = to_scsi_device(dev);

 return (sdev->channel == PCIE_CHANNEL) ? 1 : 0;
}
