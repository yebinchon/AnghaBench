
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int target_lun_valid; int device_offline; int * raid_map; int raid_bypass_enabled; int raid_bypass_configured; scalar_t__ offload_to_mirror; int phys_connector; int box; int phy_connected_dev_type; int phys_box_on_bus; int box_index; int bay; int path_map; int active_path_index; int volume_status; int aio_handle; int queue_depth; int raid_level; int sas_address; int model; int vendor; int aio_enabled; int is_expander_smp_device; int is_external_raid_device; int is_physical_device; int lun; int target; int bus; int device_type; int devtype; } ;


 int kfree (int *) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void pqi_scsi_update_device(struct pqi_scsi_dev *existing_device,
 struct pqi_scsi_dev *new_device)
{
 existing_device->devtype = new_device->devtype;
 existing_device->device_type = new_device->device_type;
 existing_device->bus = new_device->bus;
 if (new_device->target_lun_valid) {
  existing_device->target = new_device->target;
  existing_device->lun = new_device->lun;
  existing_device->target_lun_valid = 1;
 }



 existing_device->is_physical_device = new_device->is_physical_device;
 existing_device->is_external_raid_device =
  new_device->is_external_raid_device;
 existing_device->is_expander_smp_device =
  new_device->is_expander_smp_device;
 existing_device->aio_enabled = new_device->aio_enabled;
 memcpy(existing_device->vendor, new_device->vendor,
  sizeof(existing_device->vendor));
 memcpy(existing_device->model, new_device->model,
  sizeof(existing_device->model));
 existing_device->sas_address = new_device->sas_address;
 existing_device->raid_level = new_device->raid_level;
 existing_device->queue_depth = new_device->queue_depth;
 existing_device->aio_handle = new_device->aio_handle;
 existing_device->volume_status = new_device->volume_status;
 existing_device->active_path_index = new_device->active_path_index;
 existing_device->path_map = new_device->path_map;
 existing_device->bay = new_device->bay;
 existing_device->box_index = new_device->box_index;
 existing_device->phys_box_on_bus = new_device->phys_box_on_bus;
 existing_device->phy_connected_dev_type =
  new_device->phy_connected_dev_type;
 memcpy(existing_device->box, new_device->box,
  sizeof(existing_device->box));
 memcpy(existing_device->phys_connector, new_device->phys_connector,
  sizeof(existing_device->phys_connector));
 existing_device->offload_to_mirror = 0;
 kfree(existing_device->raid_map);
 existing_device->raid_map = new_device->raid_map;
 existing_device->raid_bypass_configured =
  new_device->raid_bypass_configured;
 existing_device->raid_bypass_enabled =
  new_device->raid_bypass_enabled;
 existing_device->device_offline = 0;


 new_device->raid_map = ((void*)0);
}
