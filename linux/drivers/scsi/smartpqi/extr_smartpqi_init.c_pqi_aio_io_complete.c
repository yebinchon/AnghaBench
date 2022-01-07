
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct pqi_io_request {int status; struct scsi_cmnd* scmd; } ;


 int DID_IMM_RETRY ;
 int EAGAIN ;
 int pqi_free_io_request (struct pqi_io_request*) ;
 int pqi_queue_raid_bypass_retry (struct pqi_io_request*) ;
 scalar_t__ pqi_raid_bypass_retry_needed (struct pqi_io_request*) ;
 int pqi_scsi_done (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;

__attribute__((used)) static void pqi_aio_io_complete(struct pqi_io_request *io_request,
 void *context)
{
 struct scsi_cmnd *scmd;

 scmd = io_request->scmd;
 scsi_dma_unmap(scmd);
 if (io_request->status == -EAGAIN)
  set_host_byte(scmd, DID_IMM_RETRY);
 else if (pqi_raid_bypass_retry_needed(io_request)) {
  pqi_queue_raid_bypass_retry(io_request);
  return;
 }
 pqi_free_io_request(io_request);
 pqi_scsi_done(scmd);
}
