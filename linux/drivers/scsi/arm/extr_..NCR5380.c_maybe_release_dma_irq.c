
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {int selecting; int connected; int autosense; int unissued; int disconnected; } ;


 int NCR5380_release_dma_irq (struct Scsi_Host*) ;
 scalar_t__ list_empty (int *) ;
 struct NCR5380_hostdata* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static inline void maybe_release_dma_irq(struct Scsi_Host *instance)
{
 struct NCR5380_hostdata *hostdata = shost_priv(instance);


 if (list_empty(&hostdata->disconnected) &&
     list_empty(&hostdata->unissued) &&
     list_empty(&hostdata->autosense) &&
     !hostdata->connected &&
     !hostdata->selecting) {
  NCR5380_release_dma_irq(instance);
 }
}
