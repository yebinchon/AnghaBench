
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_target {struct ipr_sata_port* hostdata; int dev; } ;
struct ipr_sata_port {struct ipr_resource_entry* res; struct ata_port* ap; struct ipr_ioa_cfg* ioa_cfg; } ;
struct ipr_resource_entry {struct ipr_sata_port* sata_port; } ;
struct ipr_ioa_cfg {TYPE_1__* host; int ata_host; } ;
struct ata_port {struct ipr_sata_port* private_data; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {int host_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ata_port* ata_sas_port_alloc (int *,int *,struct Scsi_Host*) ;
 struct Scsi_Host* dev_to_shost (int *) ;
 struct ipr_resource_entry* ipr_find_starget (struct scsi_target*) ;
 scalar_t__ ipr_is_gata (struct ipr_resource_entry*) ;
 int kfree (struct ipr_sata_port*) ;
 struct ipr_sata_port* kzalloc (int,int ) ;
 int sata_port_info ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ipr_target_alloc(struct scsi_target *starget)
{
 struct Scsi_Host *shost = dev_to_shost(&starget->dev);
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *) shost->hostdata;
 struct ipr_sata_port *sata_port;
 struct ata_port *ap;
 struct ipr_resource_entry *res;
 unsigned long lock_flags;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 res = ipr_find_starget(starget);
 starget->hostdata = ((void*)0);

 if (res && ipr_is_gata(res)) {
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
  sata_port = kzalloc(sizeof(*sata_port), GFP_KERNEL);
  if (!sata_port)
   return -ENOMEM;

  ap = ata_sas_port_alloc(&ioa_cfg->ata_host, &sata_port_info, shost);
  if (ap) {
   spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
   sata_port->ioa_cfg = ioa_cfg;
   sata_port->ap = ap;
   sata_port->res = res;

   res->sata_port = sata_port;
   ap->private_data = sata_port;
   starget->hostdata = sata_port;
  } else {
   kfree(sata_port);
   return -ENOMEM;
  }
 }
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);

 return 0;
}
