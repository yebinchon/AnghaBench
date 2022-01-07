
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpsa_scsi_dev_t {scalar_t__ offload_to_be_enabled; int queue_depth; int offload_to_mirror; scalar_t__ offload_config; int hba_ioaccel_enabled; int ioaccel_handle; int raid_map; int raid_level; } ;
struct ctlr_info {TYPE_1__** dev; } ;
struct TYPE_2__ {scalar_t__ offload_enabled; scalar_t__ offload_to_be_enabled; int queue_depth; int offload_to_mirror; scalar_t__ offload_config; int hba_ioaccel_enabled; int ioaccel_handle; int raid_map; int raid_level; } ;


 int BUG_ON (int) ;
 int HPSA_MAX_DEVICES ;
 int KERN_INFO ;
 int hpsa_show_dev_msg (int ,struct ctlr_info*,TYPE_1__*,char*) ;
 int wmb () ;

__attribute__((used)) static void hpsa_scsi_update_entry(struct ctlr_info *h,
 int entry, struct hpsa_scsi_dev_t *new_entry)
{

 BUG_ON(entry < 0 || entry >= HPSA_MAX_DEVICES);


 h->dev[entry]->raid_level = new_entry->raid_level;




 h->dev[entry]->ioaccel_handle = new_entry->ioaccel_handle;


 if (new_entry->offload_config && new_entry->offload_to_be_enabled) {
  h->dev[entry]->raid_map = new_entry->raid_map;
  h->dev[entry]->ioaccel_handle = new_entry->ioaccel_handle;
 }
 if (new_entry->offload_to_be_enabled) {
  h->dev[entry]->ioaccel_handle = new_entry->ioaccel_handle;
  wmb();
 }
 h->dev[entry]->hba_ioaccel_enabled = new_entry->hba_ioaccel_enabled;
 h->dev[entry]->offload_config = new_entry->offload_config;
 h->dev[entry]->offload_to_mirror = new_entry->offload_to_mirror;
 h->dev[entry]->queue_depth = new_entry->queue_depth;






 h->dev[entry]->offload_to_be_enabled = new_entry->offload_to_be_enabled;




 if (!new_entry->offload_to_be_enabled)
  h->dev[entry]->offload_enabled = 0;

 hpsa_show_dev_msg(KERN_INFO, h, h->dev[entry], "updated");
}
