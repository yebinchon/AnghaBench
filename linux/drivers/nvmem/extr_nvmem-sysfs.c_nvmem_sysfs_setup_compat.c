
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* name; int * key; } ;
struct TYPE_8__ {int * private; TYPE_1__ attr; int size; } ;
struct nvmem_device {int flags; int dev; TYPE_2__ eeprom; scalar_t__ base_dev; int size; scalar_t__ read_only; } ;
struct nvmem_config {scalar_t__ base_dev; scalar_t__ root_only; int compat; } ;


 int EINVAL ;
 int FLAG_COMPAT ;
 TYPE_2__ bin_attr_ro_nvmem ;
 TYPE_2__ bin_attr_ro_root_nvmem ;
 TYPE_2__ bin_attr_rw_nvmem ;
 TYPE_2__ bin_attr_rw_root_nvmem ;
 int dev_err (int *,char*,int) ;
 int device_create_bin_file (scalar_t__,TYPE_2__*) ;
 int eeprom_lock_key ;

int nvmem_sysfs_setup_compat(struct nvmem_device *nvmem,
         const struct nvmem_config *config)
{
 int rval;

 if (!config->compat)
  return 0;

 if (!config->base_dev)
  return -EINVAL;

 if (nvmem->read_only) {
  if (config->root_only)
   nvmem->eeprom = bin_attr_ro_root_nvmem;
  else
   nvmem->eeprom = bin_attr_ro_nvmem;
 } else {
  if (config->root_only)
   nvmem->eeprom = bin_attr_rw_root_nvmem;
  else
   nvmem->eeprom = bin_attr_rw_nvmem;
 }
 nvmem->eeprom.attr.name = "eeprom";
 nvmem->eeprom.size = nvmem->size;



 nvmem->eeprom.private = &nvmem->dev;
 nvmem->base_dev = config->base_dev;

 rval = device_create_bin_file(nvmem->base_dev, &nvmem->eeprom);
 if (rval) {
  dev_err(&nvmem->dev,
   "Failed to create eeprom binary file %d\n", rval);
  return rval;
 }

 nvmem->flags |= FLAG_COMPAT;

 return 0;
}
