
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {scalar_t__ devtype; scalar_t__ offload_to_be_enabled; int offload_enabled; } ;
struct ctlr_info {int dummy; } ;


 scalar_t__ TYPE_DISK ;
 scalar_t__ TYPE_ZBC ;
 int hpsa_figure_phys_disk_ptrs (struct ctlr_info*,struct hpsa_scsi_dev_t**,int,struct hpsa_scsi_dev_t*) ;
 int is_logical_device (struct hpsa_scsi_dev_t*) ;

__attribute__((used)) static void hpsa_update_log_drive_phys_drive_ptrs(struct ctlr_info *h,
    struct hpsa_scsi_dev_t *dev[], int ndevices)
{
 int i;

 for (i = 0; i < ndevices; i++) {
  if (dev[i] == ((void*)0))
   continue;
  if (dev[i]->devtype != TYPE_DISK &&
      dev[i]->devtype != TYPE_ZBC)
   continue;
  if (!is_logical_device(dev[i]))
   continue;
  if (!dev[i]->offload_enabled && dev[i]->offload_to_be_enabled)
   hpsa_figure_phys_disk_ptrs(h, dev, ndevices, dev[i]);
 }
}
