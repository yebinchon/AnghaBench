
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int devtype; int scsi3addr; scalar_t__ is_expander_smp_device; } ;
 int pqi_is_hba_lunid (int ) ;

__attribute__((used)) static bool pqi_is_supported_device(struct pqi_scsi_dev *device)
{
 bool is_supported;

 if (device->is_expander_smp_device)
  return 1;

 is_supported = 0;

 switch (device->devtype) {
 case 133:
 case 128:
 case 129:
 case 131:
 case 132:
  is_supported = 1;
  break;
 case 130:






  if (pqi_is_hba_lunid(device->scsi3addr))
   is_supported = 1;
  break;
 }

 return is_supported;
}
