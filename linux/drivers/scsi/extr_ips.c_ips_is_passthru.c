
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {scalar_t__* cmnd; TYPE_1__* device; } ;
struct scatterlist {int offset; } ;
struct TYPE_2__ {scalar_t__ channel; scalar_t__ id; scalar_t__ lun; } ;


 scalar_t__ IPS_ADAPTER_ID ;
 scalar_t__ IPS_IOCTL_COMMAND ;
 int METHOD_TRACE (char*,int) ;
 char* kmap_atomic (int ) ;
 int kunmap_atomic (char*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct scatterlist* scsi_sglist (struct scsi_cmnd*) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static int ips_is_passthru(struct scsi_cmnd *SC)
{
 unsigned long flags;

 METHOD_TRACE("ips_is_passthru", 1);

 if (!SC)
  return (0);

 if ((SC->cmnd[0] == IPS_IOCTL_COMMAND) &&
     (SC->device->channel == 0) &&
     (SC->device->id == IPS_ADAPTER_ID) &&
     (SC->device->lun == 0) && scsi_sglist(SC)) {
                struct scatterlist *sg = scsi_sglist(SC);
                char *buffer;



                local_irq_save(flags);
                buffer = kmap_atomic(sg_page(sg)) + sg->offset;
                if (buffer && buffer[0] == 'C' && buffer[1] == 'O' &&
                    buffer[2] == 'P' && buffer[3] == 'P') {
                        kunmap_atomic(buffer - sg->offset);
                        local_irq_restore(flags);
                        return 1;
                }
                kunmap_atomic(buffer - sg->offset);
                local_irq_restore(flags);
 }
 return 0;
}
