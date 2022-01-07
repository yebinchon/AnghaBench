
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct aac_dev {int scsi_host_ptr; } ;


 int CONTAINER_CHANNEL ;
 int aac_phys_to_logical (int) ;
 struct scsi_device* scsi_device_lookup (int ,int,int,int ) ;

__attribute__((used)) static struct scsi_device *aac_lookup_safw_scsi_device(struct aac_dev *dev,
        int bus,
        int target)
{
 if (bus != CONTAINER_CHANNEL)
  bus = aac_phys_to_logical(bus);

 return scsi_device_lookup(dev->scsi_host_ptr, bus, target, 0);
}
