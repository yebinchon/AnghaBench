
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct pqi_io_request {struct scsi_cmnd* scmd; } ;


 int pqi_free_io_request (struct pqi_io_request*) ;
 int pqi_scsi_done (struct scsi_cmnd*) ;

__attribute__((used)) static void pqi_queued_raid_bypass_complete(struct pqi_io_request *io_request,
 void *context)
{
 struct scsi_cmnd *scmd;

 scmd = io_request->scmd;
 pqi_free_io_request(io_request);
 pqi_scsi_done(scmd);
}
