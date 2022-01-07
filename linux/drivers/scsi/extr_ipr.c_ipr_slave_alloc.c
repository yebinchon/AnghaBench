
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {struct ipr_resource_entry* hostdata; TYPE_1__* host; } ;
struct ipr_resource_entry {int needs_sync_complete; scalar_t__ in_erp; scalar_t__ add_to_ml; struct scsi_device* sdev; } ;
struct ipr_ioa_cfg {TYPE_2__* host; } ;
struct TYPE_4__ {int host_lock; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int ENXIO ;
 int ipr_ata_slave_alloc (struct scsi_device*) ;
 struct ipr_resource_entry* ipr_find_sdev (struct scsi_device*) ;
 scalar_t__ ipr_is_gata (struct ipr_resource_entry*) ;
 int ipr_is_naca_model (struct ipr_resource_entry*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ipr_slave_alloc(struct scsi_device *sdev)
{
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *) sdev->host->hostdata;
 struct ipr_resource_entry *res;
 unsigned long lock_flags;
 int rc = -ENXIO;

 sdev->hostdata = ((void*)0);

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);

 res = ipr_find_sdev(sdev);
 if (res) {
  res->sdev = sdev;
  res->add_to_ml = 0;
  res->in_erp = 0;
  sdev->hostdata = res;
  if (!ipr_is_naca_model(res))
   res->needs_sync_complete = 1;
  rc = 0;
  if (ipr_is_gata(res)) {
   spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
   return ipr_ata_slave_alloc(sdev);
  }
 }

 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);

 return rc;
}
