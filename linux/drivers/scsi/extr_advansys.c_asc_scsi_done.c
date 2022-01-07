
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct TYPE_2__ {int host; } ;


 int ASC_STATS (int ,int ) ;
 int done ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void asc_scsi_done(struct scsi_cmnd *scp)
{
 scsi_dma_unmap(scp);
 ASC_STATS(scp->device->host, done);
 scp->scsi_done(scp);
}
