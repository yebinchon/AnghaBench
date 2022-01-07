
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int eeprom; int base_dev; } ;
struct nvmem_config {scalar_t__ compat; } ;


 int device_remove_bin_file (int ,int *) ;

void nvmem_sysfs_remove_compat(struct nvmem_device *nvmem,
         const struct nvmem_config *config)
{
 if (config->compat)
  device_remove_bin_file(nvmem->base_dev, &nvmem->eeprom);
}
