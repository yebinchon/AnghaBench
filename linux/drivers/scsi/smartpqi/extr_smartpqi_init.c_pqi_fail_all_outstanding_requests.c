
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct pqi_io_request {int context; int (* io_complete_callback ) (struct pqi_io_request*,int ) ;int * error_info; int status; struct scsi_cmnd* scmd; int refcount; } ;
struct pqi_ctrl_info {unsigned int max_io_slots; struct pqi_io_request* io_request_pool; } ;


 int DID_NO_CONNECT ;
 int ENXIO ;
 scalar_t__ atomic_read (int *) ;
 int pqi_ctrl_offline_raid_error_info ;
 int set_host_byte (struct scsi_cmnd*,int ) ;
 int stub1 (struct pqi_io_request*,int ) ;

__attribute__((used)) static void pqi_fail_all_outstanding_requests(struct pqi_ctrl_info *ctrl_info)
{
 unsigned int i;
 struct pqi_io_request *io_request;
 struct scsi_cmnd *scmd;

 for (i = 0; i < ctrl_info->max_io_slots; i++) {
  io_request = &ctrl_info->io_request_pool[i];
  if (atomic_read(&io_request->refcount) == 0)
   continue;

  scmd = io_request->scmd;
  if (scmd) {
   set_host_byte(scmd, DID_NO_CONNECT);
  } else {
   io_request->status = -ENXIO;
   io_request->error_info =
    &pqi_ctrl_offline_raid_error_info;
  }

  io_request->io_complete_callback(io_request,
   io_request->context);
 }
}
