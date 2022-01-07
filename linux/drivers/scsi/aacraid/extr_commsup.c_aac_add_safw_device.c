
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int scsi_host_ptr; } ;


 int CONTAINER_CHANNEL ;
 int aac_phys_to_logical (int) ;
 int scsi_add_device (int ,int,int,int ) ;

__attribute__((used)) static int aac_add_safw_device(struct aac_dev *dev, int bus, int target)
{
 if (bus != CONTAINER_CHANNEL)
  bus = aac_phys_to_logical(bus);

 return scsi_add_device(dev->scsi_host_ptr, bus, target, 0);
}
