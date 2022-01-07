
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sas_device_type { ____Placeholder_sas_device_type } sas_device_type ;


 int SAS_END_DEVICE ;
 int SAS_SATA_PENDING ;

__attribute__((used)) static bool dev_type_flutter(enum sas_device_type new, enum sas_device_type old)
{
 if (old == new)
  return 1;




 if ((old == SAS_SATA_PENDING && new == SAS_END_DEVICE) ||
     (old == SAS_END_DEVICE && new == SAS_SATA_PENDING))
  return 1;

 return 0;
}
